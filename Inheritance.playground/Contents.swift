import UIKit

//Kalıtım - Inheritance
/*
 mevcut bir sınıftan başka bir sınıf türetmek için kullanılır.
 bir sınıfın tek kalıtımı olabilir.
 */

class Arac {
    var renk:String?
    var vites:String?
    
    init(renk:String, vites:String) {
        self.renk = renk
        self.vites = vites
    }
}

class Araba:Arac {
    var kasaTipi:String?
     
    init(kasaTipi:String, renk:String, vites:String) {
        self.kasaTipi = kasaTipi
        super.init(renk: renk, vites: vites)
    }
}

class Nissan:Araba {
    var model:String?
    
    init(model:String, kasaTipi:String, renk:String, vites:String) {
        self.model = model
        super.init(kasaTipi: kasaTipi, renk: renk, vites: vites)
    }
}

var araba = Araba(kasaTipi: "Sedan", renk: "Beyaz", vites: "Düz")

var arac = Arac(renk: "Siyah", vites: "Otomatik")


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


//Override
//üst sınıfın sahip olduğu bir metodu özelleştirebilme sağlar
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

print("---------")

var hayvan = Hayvan()
hayvan.sesCikar()

var mememli = Memeli()
mememli.sesCikar()

var kedi = Kedi()
kedi.sesCikar()

var kopek = Kopek()
kopek.sesCikar()
