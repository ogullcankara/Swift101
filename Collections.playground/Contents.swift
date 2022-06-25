import UIKit

var array1 = [Int]()
var array2:[Float] = [10.2,2.3,2.34,12.3]
var array3 = [Int](repeating: 0, count: 3)
/*for i in 1...3{
    print(array3[i])
}*/

var meyveler:[String] = ["Çilek","Muz","Elma","Kivi","Kiraz"]

var str = meyveler[0]

for i in meyveler{
    print(i)
}

for (index,i) in meyveler.enumerated(){
    print("Index : \(index) Eleman : \(i)")
}

meyveler.append("Karpuz")

meyveler+=["Mandalina"]

meyveler[2] = "Ananas"

meyveler.insert("Portakal", at: 3)
var str2: () = meyveler.reverse()
meyveler.sort()
meyveler.remove(at: 0)
print(str2)
print(str)

print(meyveler)

var sayilar = [1,2,3,4,5,6,7,8,9,10]

var sonuc1 = sayilar.filter({$0>7})
print(sonuc1)

var sayilar1 = [30,40,70,100,90,80,50]
var toplam = 0
for s in sayilar1 {
    toplam += s
}
print("Toplam : \(toplam)")

print("Ortamala : \(toplam/sayilar1.count)")

var sayilar2 = [1,2,3,4,5]

for (index,s) in sayilar2.enumerated() {
    let sonuc = s * 2
    sayilar2[index] = sonuc
}

print(sayilar2)

var sayilar3 = [1,23,33,22,45,21,22,34,68]

var tekEleman = [Int]()
var ciftEleman = [Int]()

for s in sayilar3 {
    let sonuc = s%2
    if sonuc == 0 {
        tekEleman.append(s)
    }
    if sonuc == 1 {
        ciftEleman.append(s)
    }
}
print("Tek Sayılar : \(tekEleman)")
print("Cift Sayılar : \(ciftEleman)")


var sayilar4 = [Int]()

for _ in 1...10 {
    let randomNumber = arc4random_uniform(10)
    //print(randomNumber)
    sayilar4.append(Int(randomNumber))
}

print(sayilar4)
sayilar4.sort()
print(sayilar4)

var notlar = [Int]()
var dersler = [String]()
var toplam1 = 0

dersler.append("Tarih")
notlar.append(20)

dersler.append("Fizik")
notlar.append(80)

dersler.append("Matematik")
notlar.append(100)

dersler.append("Biyoloji")
notlar.append(40)

dersler.append("Kimya")
notlar.append(30)


for i in 0...(notlar.count-1) {
    print("\(dersler[i]) : \(notlar[i])")
    toplam1 += notlar[i]
}

print("Ortalama : \(toplam1/dersler.count)")


var isimler1 = ["Ahmet","Mehmet","Zeynep","Serhat","Kadir","Ahmet"]
var kontrolIsim = "Ahmet"

for i in isimler1 {
    if i == kontrolIsim {
        print("Bi isim dizide mevcuttur")
        break
    }
}

//Set
/*
 Arrayler ile aynı özellikler sahip, içine eklenen veriler düüzensiz yerleşir. Index değerlerinin takibi yoktur.
 İçerisine eklenen değer tekrar kaydedilemez.
 */

var sayilar5 = Set <Int>()
var meyveler2: Set = ["Çilek","Karpuz","Muz","Kivi"]
var sehirler1: Set<String> = ["Ankara","İstanbul","İzmir","İzmir"]

sayilar5.insert(30) //veri ekleme
sayilar5.insert(20)
sayilar5.insert(12)
meyveler2.insert("Armut")
sayilar5.isEmpty
sayilar5.contains(12)
meyveler2.count
meyveler2.first

for i in sehirler1 {
    print(i)
}

for (index,i) in meyveler2.enumerated() {
    print("\(index) : \(i)")
}

let tekSayilar:Set = [1,3,5,7,9]
let ciftSayilar:Set = [0,2,4,6,8]
let asalSayilar:Set = [2,3,5,7]

let birlestir = tekSayilar.union(ciftSayilar).sorted()
print(birlestir)

let kesisim = tekSayilar.intersection(ciftSayilar).sorted()
print(kesisim)

let fark = tekSayilar.subtracting(asalSayilar).sorted()
print(fark)

//Dictionary
/*
 key value ilişkisine sahiptir
 */

var dic1 = [Int:String]()
var dic2 = [3.14:"Pi",2.17:"e"]
var dic3:[Int:String] = [1:"Bir",2:"İki",3:"Üç"]
var iller = [Int:String]()
iller[34] = "İstanbul"
iller[06] = "Ankara"
iller[35] = "İzmir"
iller[01] = "Adana"
print(iller)
iller[34] = "İstanbul / Avrupa" //güncelleme
iller.updateValue("Ankara /Merkez", forKey: 06)
print(iller)
print(iller[34]!)
iller.count
iller.isEmpty
iller.first
var tersSirala = iller.reversed()
print(tersSirala)

for (key,value) in iller {
    print("Plaka : \(key) İl : \(value)")
}

iller.removeValue(forKey: 01)
print(iller)
iller[01] = "Adana"
print(iller)

var il = ["İstanbul","Sivas","Malatya","Kayseri"]
var plaka = [34,58,44,38]

var ilPlaka = Dictionary(uniqueKeysWithValues: zip(il, plaka))
print(ilPlaka)

var urunFiyat:[Double:String] = [12.33:"Süt",3.50:"Ekmek",20.30:"Kalem"]

var fiyat = [Double](urunFiyat.keys)
var urun = [String](urunFiyat.values)
print(urunFiyat)
print(urun)
print(fiyat)

var okul:[Int:String] = [354:"Ogulcan",123:"Ayse",232:"Burcu",210:"Murat"]

var sonucDic = okul.filter({$0.key > 200})
print(sonucDic)
var sonucDic2 = okul.filter({$0.value == "Ogulcan" && $0.key == 354})
print(sonucDic2)
