import UIKit

//Tanımlama

var stringA:String = "TEST1"
let stringB = String("TEST2")
var stringC = """
Test1
Test2
Test3
"""
print(stringC)
print(stringB.isEmpty)

var str1 = "xfff"

if str1.isEmpty {
    print("Değişken boş")
}else {
    print("değişken dolu")
}

//Veri ekleme

let a = 20
let b = 100

let str2 = "\(a) x \(b) = \(a*b)"
print(str2)

//String Birleştirme
let str3 = "Hello"
let str4 = " World"
let sonuc = str3 + str4
print(sonuc)

print(str3.count)

//Karşılaştırma
let str5 = "Hello"
let str6 = "Hello World"

if str5 == str6 {
    print("Değişkenler eşit")
}else {
    print("Değişkenler farklı")
}
//Parçalama

let str7 = "hello"

for harf in str7 {
    print(harf,terminator: " ")
}

//String Metotları
/*
 insert() : string ifadenin içine ekleme yapar
 remove() : string ifadenin içinden veri siler
 contains() : strinf ifadenin içinde arama yapar
 */
print("---------")

if str6.contains("er") {
    print("er ifadesini içeriyor")
}else {
    print("er ifadesini içermiyor")
}
 
str1.insert("w", at: str1.index(str1.startIndex,offsetBy: 1))
print(str1)

str1.remove(at: str1.index(str1.startIndex, offsetBy: 1))
print(str1)
print("-----------")

var strTest = "Merhaba"
var harfler = [Character]()



for harf in strTest {
    print(harf)
    harfler.append(harf)
}

print(harfler)

for i in stride(from: (harfler.count-1), through: 0, by: -1) {
    print(harfler[i],terminator: " ")
}


/*
 Guard yapısı
 - if yapısı tersi gibi çalışır.
 -koşul false olduğu durumda çalışır.
 return veya throw gibi yapılarla çalışır.
 */
print("------")
func kisiTanima(ad:String) {
    if ad == "Ahmet" {
        print("Merhaba Ahmet")
    }else {
        print("Tanınmayan Kişi")
    }
}
kisiTanima(ad: "test")

print("------")
func kisiTanima1(ad:String) {
    guard ad == "Ahmet" else {
        print("Tanınmayan kişi")
        return
    }
   print("Merhaba Ahmet")
}
kisiTanima1(ad: "Ahmet")

func buyukHarfYap(str:String?) {
    if let temp = str {
        print("\(temp.uppercased())")
    }else {
        print("str nil dir")
    }
}

buyukHarfYap(str: "ahmet")
buyukHarfYap(str: nil)

func buyukHarfYap1(str:String?) {
    guard let temp = str,temp.count > 0 else{
        print("Str nil'dir")
        return
    }
    print(temp.uppercased())
}

buyukHarfYap1(str: "dsd")
buyukHarfYap1(str: nil)

/*
 Do try catch
 - Derleme sırasında oluşabileecek hatalar için kullanılır.
 - Genelde swift input output şişlemleri için kullanılır. Yani veri alışveriş işlemlerinde
 - Kullanılacak yer mutlaka hata fırlatmalıdır.
 - try? -> kendisinden önceki blokta hata olduğunda değişkeni nil yapar. Do catch bloğuna ihtiyaç yoktur.
 - try! -> hata olduğunda hatayı bastırır, yoksa işlemi yaptırır. Do catch bloğuna ihtiyaç yoktur.
 */

enum Hatalar:Error {
    case sifiraBolunmeHatasi
}

func bolme(s1:Int, s2:Int) throws -> Int{
    if s2 == 0 {
        throw Hatalar.sifiraBolunmeHatasi
    }
    return s1/s2
}

var s1 = 10, s2 = 2

//print(s1/s2)
//let sonucBolme = bolme(s1: 10, s2: 0)

do{
    let sonucBolme = try bolme(s1: s1, s2: s2)
    print(sonucBolme)
}catch Hatalar.sifiraBolunmeHatasi {
    print("Sıfıra bölünemez")
}

let sonuc1 = try? bolme(s1: s1, s2: s2)

if sonuc1 == nil {
    print("hata oluştuğu için sonuc nil dir")
}else {
    print("hata yok : \(String(describing: sonuc1!))")
}

//Dispatch Queue - Thread
/*
 Thread'ler iş parçacıklarıdır.
 Aynı anda birden fazla iş yapabilirler.
 */

let queue1 = DispatchQueue(label: "etiket1",qos: DispatchQoS.userInitiated)
//let queue2 = DispatchQueue(label: "etiket2",qos: DispatchQoS.background)
var gecikmeSaniye:DispatchTimeInterval = .seconds(2)
print(Date())
/*
queue1.async {
    for i in 100...110 {
        print("A : \(i)")
    }
}

for i in 1000...1010 {
    print("Main : \(i)")
}
*/
queue1.asyncAfter(deadline: .now()+gecikmeSaniye) {
    print(Date())
}
