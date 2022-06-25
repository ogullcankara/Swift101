import UIKit

func hello(isim:String){
    let sonuc = "Merhaba \(isim)"
    print(sonuc)
}
hello(isim: "Ogulcan")

func sum(num1:Int, num2:Int) -> Int {
    let sum = num1 + num2
    return sum
}

var sum1 = sum(num1: 11, num2: 12)
print("Toplam : \(sum1)")


class Math1 {
    
    func topla(num1:Int, num2:Int){
        let sum = num1 + num2
        print("Toplam : \(sum)")
    }
    
    func sum(num1:Int, num2:Int) -> Int {
        let sum = num1 + num2
        return sum
    }
    
    func cikar(sayi1:Double, sayi2:Double) -> Double {
        return sayi1 - sayi2
    }
    
    func carp(sayi1:Int, sayi2:Int, isim:String) {
        let sonuc = sayi1 * sayi2
        print("Kullanıcı  : \(isim) Sonuc : \(sonuc)")
    }
    
    func bol(sayi1:Double, sayi2:Double) ->String {
        return "Bölme işlemi sonucu  : \(sayi1 / sayi2)"
    }
    
}

class Hesaplama {   //Overloading
    func topla(sayi1:Int, sayi2:Int) {
        print("Toplam : \(sayi1 + sayi2)")
    }
    
    func topla(sayi1:Double, sayi2:Int) {
        print("Toplam : \(sayi1 + Double(sayi2))")
    }
    
    func topla(sayi1:Int, sayi2:Double) {
        print("Toplam : \(Double(sayi1) + sayi2)")
    }
    
    func topla(sayi1:Int, sayi2:Int, isim:String) {
        print("Toplama yapan : \(isim) Sonuc : \(sayi1 + sayi2)")
    }
}


func toplamVariadic(sayilar:Int...) -> Int{
   var toplam = 0
    for s in sayilar {
        toplam += s
    }
    return toplam
}

func islem1(sayilar:[Int]) -> (toplam:Int, carp:Int){   //Birden fazla dönüş değeri içeren func
    var toplam = 0, carpma = 1
    for s in sayilar {
        toplam += s
        carpma *= s
    }
    return (toplam, carpma)
}


func hesaplaGeriDonusOptional(sayi1:Int, sayi2:Int) -> Int? {
    let sonuc  = sayi1 * 2 + sayi2 * 4
    return sonuc
}

var a = hesaplaGeriDonusOptional(sayi1: 2, sayi2: 3)
print("Optional Geri Donus : \(a!)")

if let t = a {
    print("Optional Geri Donus let ile : \(t)")
}

//Fonksiyonlarda Global ve Local Parametre
// sayi1 : Global, s1 : Local
func hesapla1(sayi1 s1:Int, sayi2 s2:Int) -> Int {
    let islem = s1*2 + s2*3
    return islem
}

var a1 = hesapla1(sayi1: 2, sayi2: 5)
print("İşlem Sonucu Global Parametreli : \(a1)")

var dizi = [1,2,3,4,5]
let b = islem1(sayilar: dizi)
print("Çoklu Dönüş Değeri Toplama : \(b.toplam)")
print("Çoklu Dönüş Değeri Çarpma : \(b.carp)")


print("--------")
var v1 = toplamVariadic(sayilar: 1,2,3,4,5)
print("Toplam Variadic : \(v1)")

var m = Math1()
var toplamaSonuc =  m.sum(num1: 23, num2: 12)
print(toplamaSonuc)

m.topla(num1: 10, num2: 20)
var cikarmaSonuc = m.cikar(sayi1: 23, sayi2: 11)
print("Çıkarma Sonuç : \(cikarmaSonuc)")


m.carp(sayi1: 12, sayi2: 4, isim: "Ogulcan")

print("-------------")

var h = Hesaplama()
h.topla(sayi1: 12, sayi2: 13, isim: "Ogulcan")
h.topla(sayi1: 12, sayi2: 20.5)
