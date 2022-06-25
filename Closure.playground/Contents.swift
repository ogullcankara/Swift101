import UIKit

/*
 Parantexler arasında tutulan hazır kodlama yapılarıdır.
 Fonksiyonlar gibi çalışırlar.
 Lambda yapısına benzerler
 */

let ifade = {
    print("Closure örnek")
}

ifade()

let toplama = {
    (sayi1:Int, sayi2:Int) ->Int in return sayi1 + sayi2
}

let topla = toplama(10,11)
print(topla)

var sayilar:[Int] = [5,6,-3,4,11,10]

let sirala1 = sayilar.sorted(by: {sayi1, sayi2 in sayi1 > sayi2})
let sirala2 = sayilar.sorted(by: {n1, n2 in n1 < n2})
let sirala3 = sayilar.sorted(by: {$0 > $1})
let sirala4 = sayilar.sorted(by: <)

print("sirala1 : \(sirala1)")
print("sirala2 : \(sirala2)")
print("sirala3 : \(sirala3)")
print("sirala4 : \(sirala4)")


