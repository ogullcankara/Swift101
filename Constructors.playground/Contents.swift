import UIKit

class Kisiler {
    var ad:String?
    var yas:Int?
    
    init() {

    }
    
    init(ad:String, yas:Int) {
        self.ad = ad
        self.yas = yas
    }
}

let kisi1 = Kisiler()
kisi1.ad = "İbrahim"
kisi1.yas = 23

print(kisi1.ad!)
print(kisi1.yas!)

let kisi2 = Kisiler(ad: "Ogulcan", yas: 24)

print(kisi2.ad!)
print(kisi2.yas!)

