//
//  ViewController.swift
//  07-HomeworkList
//
//  Created by Aleyna Yerlikaya on 2.04.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var data = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func addButton(_ sender: Any) {
        let alert = UIAlertController(title: "Eleman Ekle", message: "Eklemek istediğiniz string'i yazınız", preferredStyle: .alert)
        alert.addTextField(configurationHandler: nil)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (_) in
            //print(alert.textFields![0].text!)
            if alert.textFields![0].text! == "" {
                let uyari = UIAlertController(title: "Uyarı!", message: "Eleman giriniz", preferredStyle: UIAlertController.Style.alert)
                let ok = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default)
                uyari.addAction(ok)
                self.present(uyari, animated: true)
            }else{
                //tableview'a eklensin
                
            }
        }))
        present(alert, animated: true)
        
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "addCell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.data.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    
}
