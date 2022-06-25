import UIKit


// Class referans, Struct değer tiplidir. Structure ın miras özelliği yoktur.

class Ogrenci {
    var ad:String?
}

var ogrenci1 = Ogrenci()
ogrenci1.ad = "Ogulcan"

var ogrenci2 = ogrenci1
ogrenci2.ad = "İbrahim"

print("Öğrenci 1 : \(ogrenci1.ad!)")

struct Kopek {
    var renk:String?
}
 var kopek1 = Kopek()
kopek1.renk = "Beyaz"

var kopek2 = kopek1
kopek2.renk = "Siyah"

print("Köpek 1 renk : \(kopek1.renk!)")
print("Köpek 2 renk : \(kopek2.renk!)")

