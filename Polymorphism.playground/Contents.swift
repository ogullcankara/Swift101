import UIKit
import Darwin

/*
 Polymorphism olabilmesi için iki sınıf arasında kalıtım olmalıdır.
 superclass gibi görünür, sub class gibi kullanılır.
 */
class Hayvan {
    func sesCikar(){
        print("Ses yok")
    }
}

class Memeli:Hayvan {
    
}

class Kedi:Memeli {
    override func sesCikar() {
        print("miyav")
    }
}

class Kopek:Memeli {
    override func sesCikar() {
        print("Hav")
    }
}


var hayvan:Hayvan = Kopek()
hayvan.sesCikar()

//Tip dönüşümleri
/*
 is : type checking, tip kontrolü yapar
 as : upcasting, bir tipi başka bir tipe dönüştürmek için kullanılır
 as! : Force Downcasting, bir tipi başka bir tipe dönüştürür. Dönüşüm başarısız olursa hata fırlatır.
 as? : For Optional Downcasting : dönüşüm sırasında optional bir veri geliyorsa, döüşüm başarılı olursa değeri dönüştürür, başarısızsa nil tanımlar.
 */


class Ev{
    var pencereSayisi:Int?
    
    init(pencereSayisi:Int) {
        self.pencereSayisi = pencereSayisi
    }
}

class Saray:Ev{
    var kuleSayisi:Int?
    
    init(kuleSayisi:Int, pencereSayisi:Int) {
        self.kuleSayisi
        super.init(pencereSayisi: pencereSayisi)
    }
}

class Villa:Ev {
    var garajVarmi:Bool?
    
    init(garajVarmi:Bool, pencereSayisi:Int) {
        self.garajVarmi = garajVarmi
        super.init(pencereSayisi: pencereSayisi)
    }
    
}

var topkapiSarayi = Saray(kuleSayisi: 5, pencereSayisi: 30)
var bogazVilla = Villa(garajVarmi: true, pencereSayisi: 10)

print(topkapiSarayi.pencereSayisi!)
print(bogazVilla.garajVarmi!)

var saray = Saray(kuleSayisi: 12, pencereSayisi: 24)

//Upcasting
var ev1:Ev = Saray(kuleSayisi: 2, pencereSayisi: 4) as Ev
//Downcasting
var saray3:Saray? = Ev(pencereSayisi: 12) as? Saray

class Personel {
    func iseAlindi() {
        print("Personel mutlu")
    }
}

class Mudur:Personel{
    func iseAl(p:Personel) {
        p.iseAlindi()
    }
    
    func terfiEttir(p:Personel) {
        if p is Ogretmen {
            (p as! Ogretmen).maasArttir()
        }
        
        if p is Isci {
            print("Terfi alamaz")
        }
    }
}

class Isci:Personel {
    
}

class Ogretmen:Personel {
    func maasArttir() {
        print("Maas arttı")
    }
}

var ogretmen:Personel = Ogretmen()
var isci:Personel = Isci()

 var mudur = Mudur()

mudur.iseAl(p: isci)
mudur.iseAl(p: ogretmen)
mudur.terfiEttir(p: ogretmen)
mudur.terfiEttir(p: isci)
