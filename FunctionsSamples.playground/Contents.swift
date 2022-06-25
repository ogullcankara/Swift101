import UIKit

class SicaklikDonusum {
    func donustur(derece:Double) -> Double {
        let farhenhiet = derece * 1.8 + 32
        return farhenhiet
    }
}

var d1 = SicaklikDonusum()
var donusum = d1.donustur(derece: 28.0)
print("Fahrenheit : \(donusum)")


class CevreHesaplama {
    func cevreHesapla(kisaKenar:Int, uzunKenar:Int) {
        let cevreHesapla = 2 * kisaKenar + 2 * uzunKenar
        print("Dikdörtgen Çevresi  : \(cevreHesapla)")
    }
}

let c1 = CevreHesaplama()
c1.cevreHesapla(kisaKenar: 30, uzunKenar: 40)

class FaktoryelHesabi {
    func faktoryelHesapla(sayi:Int) -> Int {
        var sonuc = 1
        for i in 1...sayi {
            sonuc *= i
        }
        return sonuc
    }
}

let f1 = FaktoryelHesabi()
let f2 = f1.faktoryelHesapla(sayi: 5)
print("Faktoryel Sonuc : \(f2)")


class HarfSayac {
    func kelimeAdetBul(kelime:String, harf:Character) {
        var sonuc = 0
        
        for k in kelime {
            if k == harf{
                sonuc += 1
            }
        }
        print("Harf Adedi : \(sonuc)")
    }
}

let h1 = HarfSayac()
h1.kelimeAdetBul(kelime: "ankara", harf: "a")

class IcaciToplam {
    func icAciToplam(kenarSayisi:Int) -> Int {
        let toplam = (kenarSayisi - 2) * 180
        return toplam
    }
}

var i1 = IcaciToplam()
var i2 = i1.icAciToplam(kenarSayisi: 3)
print("İç Açı Toplam : \(i2)")


class MaasHesap{
    func maasHesapla(gunSayisi:Int) -> Int {
        let calismaSaati = gunSayisi * 8
        print("Çalışma Saati : \(calismaSaati)")
        var maas = 0
        
        if calismaSaati > 160 {
            let fazlaMesai = calismaSaati - 160
            maas = (160 * 10) + (fazlaMesai * 20)
        }else {
            maas = calismaSaati * 10
        }
        return maas
    }
}

var m1 = MaasHesap()
var m2 = m1.maasHesapla(gunSayisi: 22)
print("Maaş : \(m2)")


class InternetUcret {
    func internetUcretiHesapla(GB:Int) -> Int {
        var ucret = 0
        
        if GB > 50 {
            let kotaFazlasi = GB - 50
            ucret = 100 + (kotaFazlasi * 4)
        }else {
            ucret = 100
        }
        return ucret
    }
}

var i3 = InternetUcret()
var i4 = i3.internetUcretiHesapla(GB: 60)
print("İnternet Ücreti : \(i4)")
