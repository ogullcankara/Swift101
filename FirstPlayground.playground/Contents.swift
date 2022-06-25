import UIKit

var greeting = "Hello, playground"
print(greeting)
print("Merhaba Dünya")

var yas : Int = 23
var ad : String = "Ogulcan"
print(ad)
print("\(ad) , \(yas) yaşındadır")

var numara:Int?

numara = 4
print(numara!)

var sayi1 = 4, sayi2 = 3, kelime = "test"
print(sayi2)
//print(kelime)

var toplam = sayi2 + sayi1 + 23
print(toplam)

let pi : Double = 3.14
print(pi)

class deneme {
    
    var x = 10
    var y = 20
    
    func topla(){
        var x = 40
        
        x = x + y
        print(x)
    }
    
}

var d = deneme()
d.topla()

var i:Int = 23
var s:Double = 3.45
var f:Float = 23.3

print(i)
print(s)
var donus1:Int = Int(s)
print(donus1)
var donus2:Double = Double(i)
print(donus2)
var str1:String = String(f)
print(str1)

var str2 = "456"
if let sayiDonus1 = Int(str2){
    print(sayiDonus1)
}

var kisi = ("A","B")
print("Kişi 1 : \(kisi.0)")
var kisiDegerIki = kisi.1
print("Kişi 2 : \(kisiDegerIki)")

var hataMesaji = (404,"Not found")
var (kod,mesaj) = hataMesaji
print("Hata Mesaji 1 : \(hataMesaji.1)")
print("Hata Kodu : \(kod)")

var ogrenci : (Int,(Bool,String)) = (23,(true,"Ogulcan"))

print("Öğrenci Adı :  \(ogrenci.1.1)")

var okulNo = ogrenci.0
print("Öğrenci No : \(okulNo)")
var s1 = 10
var s2 = 20

var y1 = 11
var y2 = 12

print(s1 != s2)

var yas1 = 12
var isim1 = "Ogulcan"

if yas1 > 18 {
    print("Reşitsiniz")
}else{
    print("Reşit Değilsiniz")
}
 var gun = 2

switch gun {
 case 1:
    print("Monday")
 case 2:
    print("Tuesday")
 default :
    print("Other")
}

for i in 1...3{
    print(i)
}

for i in stride(from: 10, through: 20, by: 5){
    print(i)
}

for i in stride(from: 16, through: 10, by: -2){
    print(i)
}
print("--------")
var count = 1
while count <= 3 {
    print(count)
    count+=1
}

var str5:String?
str5 = "Hi"

if let temp = str5 {
    print(temp)
}else{
    print("Str nil değer içeriyor")
}
