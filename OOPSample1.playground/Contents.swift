import UIKit

//Depolama - Storage
class Ogrenci {
    var no:Int?
    var ad:String?
    var sinif:String?
    
    init(no:Int, ad:String, sinif:String) {
        self.ad = ad
        self.no = no
        self.sinif = sinif
    }
}

var o1 = Ogrenci(no: 100, ad: "Ahmet", sinif: "11F")
var o2 = Ogrenci(no: 90, ad: "Zeynep", sinif: "10R")
var o3 = Ogrenci(no: 130, ad: "Ceyda", sinif: "12A")
var o4 = Ogrenci(no: 150, ad: "Mehmet", sinif: "9Z")
var o5 = Ogrenci(no: 110, ad: "Yasin", sinif: "11F")

var ogrenciListesi = [Ogrenci]()
ogrenciListesi.append(o1)
ogrenciListesi.append(o2)
ogrenciListesi.append(o3)
ogrenciListesi.append(o4)
ogrenciListesi.append(o5)


for ogrenci in ogrenciListesi {
    print("----------")
    print("Öğrenci no : \(ogrenci.no!)")
    print("Öğrenci ad : \(ogrenci.ad!)")
    print("Öğrenci sınıf : \(ogrenci.sinif!)")
}

//Sıralama - Sorted
class Kisiler {
    var kisiNo:Int?
    var kisiAd:String?
    
    init(kisiNo:Int, kisiAd:String) {
        self.kisiAd = kisiAd
        self.kisiNo = kisiNo
    }
}

let kisi1 = Kisiler(kisiNo: 1, kisiAd: "Ahmet")
let kisi2 = Kisiler(kisiNo: 2, kisiAd: "Zeynep")
let kisi3 = Kisiler(kisiNo: 3, kisiAd: "Berna")

var kisilerArray = [Kisiler]()

kisilerArray.append(kisi1)
kisilerArray.append(kisi2)
kisilerArray.append(kisi3)

for kisi in kisilerArray {
    print("--------")
    print("Kişi no : \(kisi.kisiNo!) Kişi ad : \(kisi.kisiAd!)")
}

print("Sayısal Büyükten Küçüğe")

let siralama = kisilerArray.sorted(by: {$0.kisiNo! > $1.kisiNo!})
 
for kisi in siralama {
    print("--------")
    print("Kişi no : \(kisi.kisiNo!) Kişi ad : \(kisi.kisiAd!)")
}

print("Sayısal Küçükten Büyüğe")

let siralama2 = kisilerArray.sorted(by: {$0.kisiNo! < $1.kisiNo!})
 
for kisi in siralama2 {
    print("--------")
    print("Kişi no : \(kisi.kisiNo!) Kişi ad : \(kisi.kisiAd!)")
}

print("Harfsel Olarak Küçükten Büyüğe")

let siralama3 = kisilerArray.sorted(by: {$0.kisiAd! < $1.kisiAd!})
 
for kisi in siralama3{
    print("--------")
    print("Kişi no : \(kisi.kisiNo!) Kişi ad : \(kisi.kisiAd!)")
}

//listeleme - listing
class DersNotlar {
    var ders:String?
    var not:Int?
    
    init(ders:String, not:Int) {
        self.ders = ders
        self.not = not
    }
}

var d1 = DersNotlar(ders: "Tarih", not: 20)
var d2 = DersNotlar(ders: "Fizik", not: 80)
var d3 = DersNotlar(ders: "Matematik", not: 100)
var d4 = DersNotlar(ders: "Kimya", not: 50)
var d5 = DersNotlar(ders: "Biyoloji", not: 40)

var dersNotlariListesi = [DersNotlar]()
dersNotlariListesi.append(d1)
dersNotlariListesi.append(d2)
dersNotlariListesi.append(d3)
dersNotlariListesi.append(d4)
dersNotlariListesi.append(d5)

var toplam = 0
for d in dersNotlariListesi {
    print("-------")
    print("\(d.ders!) : \(d.not!)")
    toplam += d.not!
}

print("-------")
print("Toplam : \(toplam)")
let ortalama = toplam / dersNotlariListesi.count
print("Ortalama : \(ortalama)")

if ortalama >= 50 {
    print("Geçtiniz")
}else {
    print("Kaldınız")
}

//Listeleme - Composition

class Adres {
    var il:String?
    var ilce:String?
    
    init(il:String, ilce:String) {
        self.il = il
        self.ilce = ilce
    }
}

class Personel {
    var personelNo:Int?
    var personelAd:String?
    var personelAdres:Adres?
    
    init(personelNo:Int, personelAd:String, personelAdres:Adres) {
        self.personelNo = personelNo
        self.personelAd = personelAd
        self.personelAdres = personelAdres
    }
}

var adres1 = Adres(il: "Bursa", ilce: "Osmangazi")
var adres2 = Adres(il: "İstanbul", ilce: "Kadiköy")
var adres3 = Adres(il: "Ankara", ilce: "Mamak")
var adres4 = Adres(il: "İzmir", ilce: "Konak")

var personel = Personel(personelNo: 110, personelAd: "Ahmet", personelAdres: adres1)
var persone2 = Personel(personelNo: 100, personelAd: "Zeynep", personelAdres: adres2)
var persone3 = Personel(personelNo: 90, personelAd: "Mehmet", personelAdres: adres3)
var persone4 = Personel(personelNo: 130, personelAd: "Ece", personelAdres: adres4)

var personelListesi = [Personel]()
personelListesi.append(personel)
personelListesi.append(persone2)
personelListesi.append(persone3)
personelListesi.append(persone4)

for p in personelListesi {
    print("------------")
    print("Personel No : \(p.personelNo!)")
    print("Personel Ad \(p.personelAd!)")
    print("Personel Adres : ")
    print("Personel İl : \(p.personelAdres!.il!)")
}

//Set işlemi

class Ogrenci1:Hashable,Equatable {
    var no:Int?
    var ad:String?
    var sinif:String?
    
    init(no:Int, ad:String, sinif:String) {
        self.sinif = sinif
        self.ad = ad
        self.no = no
    }
    
    var hashValue: Int{
        get{
            return no.hashValue
        }
    }
    
    static func == (lhs:Ogrenci1, rhs:Ogrenci1) ->Bool {
        return lhs.no == rhs.no
    }
    
}

var t1 = Ogrenci1(no: 100, ad: "Ahmet", sinif: "11F")
var t2 = Ogrenci1(no: 90, ad: "Zeynep", sinif: "10R")
var t3 = Ogrenci1(no: 150, ad: "Ceyda", sinif: "10A")
var t4 = Ogrenci1(no: 110, ad: "Burcu", sinif: "11F")
var t5 = Ogrenci1(no: 100, ad: "Demet", sinif: "9B")
//Set e no ya göre veri yüklediğimiz için t5 set e eklenmez

var ogrenciListesi1 = Set <Ogrenci1>()
ogrenciListesi1.insert(t1)
ogrenciListesi1.insert(t2)
ogrenciListesi1.insert(t3)
ogrenciListesi1.insert(t4)
ogrenciListesi1.insert(t5)

for ogrenci1 in ogrenciListesi1 {
    print("-------")
    print("Öğrenci no : \(String(describing: ogrenci1.no!))")
    print("Öğrenci no : \(String(describing: ogrenci1.ad!))")
    print("Öğrenci no : \(String(describing: ogrenci1.sinif!))")
}

//Dictionary

class Ogrenci2 {
    var no:Int?
    var ad:String?
    var sinif:String?
    
    init(no:Int, ad:String, sinif:String) {
        self.sinif = sinif
        self.ad = ad
        self.no = no
    }

}

var dic1 = Ogrenci2(no: 100, ad: "Ahmet", sinif: "11F")
var dic2 = Ogrenci2(no: 90, ad: "Zeynep", sinif: "10R")
var dic3 = Ogrenci2(no: 150, ad: "Ceyda", sinif: "10A")
var dic4 = Ogrenci2(no: 110, ad: "Burcu", sinif: "11F")
var dic5 = Ogrenci2(no: 100, ad: "Demet", sinif: "9B")

var ogrenciDictionary = [Int:Ogrenci2]()
ogrenciDictionary[dic1.no!] = dic1
ogrenciDictionary[dic2.no!] = dic2
ogrenciDictionary[dic3.no!] = dic3
ogrenciDictionary[dic4.no!] = dic4
ogrenciDictionary[dic5.no!] = dic5

for (ogrenciNo, nesne) in ogrenciDictionary {
    print("**********")
    print("Öğrenci No : \(ogrenciNo)")
    print("öğrenci Ad : \(nesne.ad!)")
    print("öğrenci Sınıf : \(nesne.sinif!)")
}




