import UIKit

//extensions : var olan bir yapıyı kendimize göre genişletmemize yarar.

extension Double {
    var km:Double {return self * 1000.0}
    var m:Double {return self}
    var cm:Double {return self / 100.0}
    var mm:Double {return self / 1000.0}
}
print("10 cm \(10.cm) metredir")
print("20 km \(20.km) metredir")

let sayi = 30.0
print("30 mm \(sayi.mm) metredir ")

//metot extension kullanımı
extension String {
    func yerDegistir(yeniHarf:String, eskiHarf:String) -> String{
        return self.replacingOccurrences(of: yeniHarf, with: eskiHarf)
    }
}

let str = "ankara".yerDegistir(yeniHarf: "a", eskiHarf: "e")
print(str)

