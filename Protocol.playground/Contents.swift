import UIKit

//Protocol, diğer dillerdeki Interface lere karşılık olarak kullanılır.

protocol Protocol1 {
    var degisken:Int {get set}
    func metod1()
    func metod2() -> String
}

class ClassA:Protocol1 {
    var degisken = 10
    
    func metod1() {
        print("Protocol 1 metod1")
    }
    
    func metod2() -> String {
        return "Protocol 1 metod2"
    }
    
}

var a = ClassA()
a.metod1()
print(a.metod2())
a.degisken = 20
var x = a.degisken
print(x)

protocol Squeezable {
    func howToSqueez()
}

protocol Eatable {
    func howToEat()
}

class Aslan {
    
}

class Tavuk:Eatable {
    func howToEat() {
        print("Kızatma")
    }
}

class Elma:Eatable,Squeezable{
    func howToEat() {
        print("Dilimle ve ye")
    }
    
    func howToSqueez() {
        print("Blender ile sık")
    }
}

class AmasyaElmasi:Elma {
    override func howToEat() {
        print("Yıka ve ye")
    }
}

var aslan = Aslan()
var amasyaElmasi:Elma = AmasyaElmasi()
var elma = Elma()
var tavuk:Eatable = Tavuk()

var nesneler = [aslan,elma,amasyaElmasi,tavuk] as [Any]

for nesne in nesneler {
    if nesne is Eatable {
        (nesne as! Eatable).howToEat()
    }
    
    if nesne is Squeezable {
        (nesne as! Squeezable).howToSqueez()
    }
    print("-------")
}

