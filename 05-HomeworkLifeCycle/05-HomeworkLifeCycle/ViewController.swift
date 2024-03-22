//
//  ViewController.swift
//  05-HomeworkLifeCycle
//
//  Created by Aleyna Yerlikaya on 22.03.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load")
        //uygulama açılır açılmaz bir kere çağırır, uygulamanın açıldığını gösterir
    }
    override func viewWillAppear(_ animated: Bool) {
        print("view will appear")
        //2.çağırılan, ekran her gösterildiğinde gelir
    }
    override func viewDidAppear(_ animated: Bool) {
        print("view did appear")
        //3.çağırılan, ekran her gösterildiğinde gelir ancak animasyon, api, coredata gibi veri çekme işlemleri burda yapılır
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("view will disappear")
        //sayfa değişince çalışır
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("view did disappear")
        //sayfa değişikliği yapılınca view hiyerarşiden silindiğinde çalışır
    }
    
    


}

