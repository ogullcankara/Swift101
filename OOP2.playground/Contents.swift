import UIKit

//Static, nesne oluşturmadan sınıfın değişken ve metotlarına erişilebilir.

class Asinifi {
    static var x = 10
    static func metod(){
        print("test")
    }
}

print(Asinifi.x)
Asinifi.metod()


//Enum
enum Renkler {
    case Beyaz
    case Siyah
}

var renk = Renkler.Beyaz

switch renk {
    case .Beyaz:
        print("Beyaz")
    case .Siyah:
        print("Siyah")
}

//Composition
class Kisiler {
    var ad:String?
    var yas:Int?
    var adres:Adres?
    
    init(ad:String, yas:Int, adres:Adres) {
        self.ad = ad
        self.yas = yas
        self.adres = adres
    }
}

class Adres {
    var il:String?
    var ilce:String?
    
    init(il:String, ilce:String) {
        self.il = il
        self.ilce = ilce
    }
}

let adres = Adres(il: "Sivas", ilce: "Merkez")
let kisi = Kisiler(ad: "Ogulcan", yas: 23, adres: adres)

print("Kisi Ad : \(kisi.ad!)")
print("Kisi Yaş : \(kisi.yas!)")
print("Kisi İl : \(kisi.adres!.il!)")
print("Kisi İlçe : \(kisi.adres!.ilce!)")

class Kategoriler {
    var kategori_id:Int?
    var kategori_ad:String?
    
    init(kategori_id:Int, kategori_ad:String) {
        self.kategori_ad = kategori_ad
        self.kategori_id = kategori_id
    }
}

class Yonetmenler {
    var yonetmen_id:Int?
    var yonetmen_ad:String?
    
    init(yonetmen_id:Int, yonetmen_ad:String) {
        self.yonetmen_ad = yonetmen_ad
        self.yonetmen_id = yonetmen_id
    }
}

class Filmler{
    var film_id:Int?
    var film_ad:String?
    var film_yil:Int?
    var kategori:Kategoriler?
    var yonetmen:Yonetmenler?
    
    init(film_id:Int, film_ad:String, film_yil:Int, kategori:Kategoriler, yonetmen:Yonetmenler) {
        self.film_ad = film_ad
        self.film_id = film_id
        self.kategori = kategori
        self.yonetmen = yonetmen
    }
}

var k1 = Kategoriler(kategori_id: 1, kategori_ad: "Dram")
var k2 = Kategoriler(kategori_id: 2, kategori_ad: "Komedi")
var k3 = Kategoriler(kategori_id: 3, kategori_ad: "Bilim-Kurgu")

var y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "NBC")
var y2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Nolan")
var y3 = Yonetmenler(yonetmen_id: 3, yonetmen_ad: "Kubrick")

var f1 = Filmler(film_id: 1, film_ad: "Batman", film_yil: 2015, kategori: k1, yonetmen: y2)
var f2 = Filmler(film_id: 2, film_ad: "Space Oddysey", film_yil: 2000, kategori: k3, yonetmen: y3)

print("Film id : \(f1.film_id!)")
print("Film ad : \(f1.film_ad!)")
print("Film kategori : \(f1.kategori!.kategori_ad!)")

