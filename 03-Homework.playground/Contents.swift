import UIKit

//BigNumber



//Fonksiyona parametre olarak verilen sayıya göre + - karakterlerini ekrana yazdıran bir fonksiyon yaınız.Örneğin 1 için sadece +, 2 için +-, 5 için +-+-+ şeklinde olmalıdır
func characterNumber (sayi: Int) {
    
    
}
characterNumber(sayi: 2)



//Fonksiyona parametre olarak verilen sayıyı en büyük yapacak şekilde 5 sayısını yanına koyunuz. Örneğin parametre 0 için çıktı 50 olmalıdır. Parametre 28 için 528, parametre 920 için 9520 olmalıdır
func bigNumber(sayi: Int){
    
}
bigNumber(sayi: 10)



//Exercism 1
func hello() -> String {
    return "hello world"
}
func hello(name:String) -> String {
    return "hello \(name)"
}
hello()
hello(name: "aleyna")



//Exercism 2
let expectedMinutesInOven = 40 //fırında durması gereken dakika

//kaç dakika kaldığını gösteren fonksiyon
func remainingMinutesInOven(elapsedMinutes: Int) -> Int {
    return expectedMinutesInOven - elapsedMinutes
}
remainingMinutesInOven(elapsedMinutes: 20)

//katmanları hazırlamak için geçen toplam dakika
func preparationTimeInMinutes(layers: Int) -> Int {
    return layers * 2
}
preparationTimeInMinutes(layers: 3)

//toplam harcanan süre
func totalTimeInMinutes(layers: Int, elapsedMinutes: Int){
    let total = (layers * 2) + elapsedMinutes
    print("katman süresi: \(layers), fırında kalma süresi: \(elapsedMinutes) ve toplam harcanan dakika: \(total)")
}
totalTimeInMinutes(layers: 3, elapsedMinutes: 40)



//Exercism 3
let dailyHour = 8 //Günlk 8 saat çalışıyor

//saat başı fiyatı
func dailyRateFrom(hourlyRate: Int) -> Int {
    return hourlyRate * dailyHour
}
dailyRateFrom(hourlyRate: 60)

//aylık indirimli ücret
let workDay = 22
func monthlyRateFrom(hourlyRate: Int, withDiscount: Int) -> Int {
    return 22 * (hourlyRate - withDiscount)
}
monthlyRateFrom(hourlyRate: 60, withDiscount: 10)

//bütçeye göre çalışma günü
func workdaysIn(budget: Int, hourlyRate: Int, withDiscount: Int) -> Int {
    return budget / (hourlyRate - withDiscount)
}
workdaysIn(budget: 20000, hourlyRate: 110, withDiscount: 10)



//Exercism 4


