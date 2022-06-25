import UIKit

struct Urun {
    var ad:String?
    var fiyat:Double?
}

class Araba {
    var renk:String?
    var kapasite:Int?
    var hiz:Int?
    var calisiyorMu:Bool?
    
    func calistir(){
        calisiyorMu = true
    }
    
    func durdur(){
        calisiyorMu = false
        hiz = 0
    }
    
    func hizlan(kacKm:Int){
        hiz! += kacKm
    }
    
    func yavasla(kacKm:Int){
        hiz! -= kacKm
    }
    
    func bilgiAl(){
        print("Renk : \(renk!)")
        print("Hız : \(hiz!)")
        print("Calisiyor mu : \(calisiyorMu!)")
        print("-----------")
    }
}

class Matematik {
    var x = 10 ,y = 20
    var topla:Int {
        get{
            return x + y
        }
    }
}

class Maas {
    var maas = 2000.0, bonus = 1.10
    var haftalikhesapla:Double {
        get {
            return (maas * bonus) / 52
        }
        
        set (yeniHaftalik){
            self.maas = yeniHaftalik * 52
        }
    }
}

var m = Maas()
var mat = Matematik()

var laptop = Urun()
var mercedes = Araba()

mercedes.kapasite = 4
mercedes.renk = "Siyah"
laptop.ad = "M1 Macbook Air"
laptop.fiyat = 17500.00
print("Urun adı : \(laptop.ad!) Urun fiyatı : \(laptop.fiyat!)")
print("Arac kapasitesi : \(mercedes.kapasite!) Arac rengi : \(mercedes.renk!)")
print("----------------")
var bmw = Araba()

bmw.renk = "Beyaz"
bmw.hiz = 270
bmw.calistir()
bmw.bilgiAl()
bmw.durdur()
bmw.calistir()
bmw.bilgiAl()
bmw.hizlan(kacKm: 120)
bmw.bilgiAl()
bmw.yavasla(kacKm: 40)
bmw.bilgiAl()
print(mat.topla)
print("----------------")

print(m.haftalikhesapla)
m.haftalikhesapla = 100

print("----------------")
print(m.haftalikhesapla)
print(m.maas)


