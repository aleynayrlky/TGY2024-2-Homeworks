import UIKit

//Bir sınıfta en az bir yazılım dilini bilenlerin sayısı 24. Sadece swift bilenler 12, sadece kotlin bilenler 8 olduğuna göre. Her iki dili bilenlerin sayısı kaçtır?
var knowSwift = 12
var knowKotlin = 8
var total = 24

var intersection = total - (knowSwift + knowKotlin)
print(intersection)



//Hashable
class Student: Hashable{
    
    var name: String
    var id: Int

    init(name: String, id: Int) {
        self.name = name
        self.id = id
    }
    
    static func == (lhs: Student, rhs: Student) -> Bool {
        return lhs.name == rhs.name && lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher){
        hasher.combine(name.hashValue)
        hasher.combine(id.hashValue)
    }
}

var student = Student(name: "Aleyna", id: 1)
var student2 = Student(name: "Ayşe", id: 2)

print(student.hashValue)
print(student2.hashValue)


//Equatable
class User : Equatable{

    var username: String
    var no: Int
    
    init(username: String, no: Int) {
        self.username = username
        self.no = no
    }
    
    static func == (lhs: User, rhs: User) -> Bool {
        return lhs.username == rhs.username && lhs.no == rhs.no
    }
}

var user = User(username: "Aleyna", no: 15)
var user2 = User(username: "Ayşe", no: 16)

if user == user2 {
    print("same")
}else{
    print("different")
}


//Symnetric Difference
var number: Set<Int> = [1,2,3,4,5,6,7,8,9,10]
var number2: Set<Int> = [3,6,8,12]

let symnetricDifference = number.symmetricDifference(number2)
print(symnetricDifference)


// Prime
func isPrime(number: Int) -> Bool {
    var result = true
    for num in 2...(number-1){
        if number % num == 0 {
            result = false
            break
        }
    }
    return result
}
print(isPrime(number: 9))






//Euler 4
/*for palindrom in 100...999{
    var palindroms = palindrom * palindrom
    let sayi = [palindroms] //burada sayıyı diziye çevirip index karşılaştırması yapmak istedim ama hata verdi
    if sayi[0] == sayi[3]{
        if sayi[1] == sayi[2]{
            print("Palindrom sayı")
        }else{
            print("Palindrom sayı değil")
        }
    }else{
        print("Palindrom sayı değil")
    }
}*/


//Euler 5



//Euler 6
//Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
var sum:Decimal = 0
var top:Decimal = 0
for number in 1...100 {
    //karelerinin toplamı
    var numbers = Decimal(number)
    let opow = pow(numbers, 2)
    sum += opow
    
    //toplamının karesi
    top += numbers
}
print(sum)
let opowTop = pow(top, 2)
print(opowTop)
let difference = opowTop - sum
print("Difference \(opowTop) - \(sum) = \(difference)")


