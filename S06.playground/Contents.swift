//строки
//строка это упорядоченный набор символов (character)
for c in "hello world" {
    print(c)
}
//по ним можно пробежаться счетчиком
//String + Character делать нельзя, но можно делать .append
var hi = "PRIVET"
hi.count
//свифт позволяет использовать все символы + есть место для резерва
let heart = "\u{1f496}" //можно вставлять скалярные значения (запись в хексе)
var fun : Character = "ъ"
fun = "ъ\u{301}"//комбинируем символ + ударение
fun = "ъ\u{301}\u{20dd}"//засунули все в круг

//строка англ алфавит, взяли переменную и нашли индекс нужной буквы

var numeratedString = "ABCDEFGHIJKLMNOPQ"
var k=0
var searchingConst:Character
searchingConst="A"

for i in numeratedString {
    k+=1
    if i==searchingConst {
        print ("number \(i) is \(k)")
    }
}

//5 опциональных констант посчитать сумму 5 констант через ?? или опт бандинг (если нил = 0) и записать все строкой (5+10+нил+9=скототам)
//конкатенацией и интерполяцией

var firstValue:String? = "7"
var secondValue:String? = nil
var thirdValue:String? = "3"
var firstInt:String
var secondInt:String
var thirdInt:String

if firstValue != nil {
    firstInt = firstValue!
} else {
    firstValue = "0"
    firstInt = firstValue!
}
if secondValue != nil {
    secondInt = secondValue!
} else {
    secondValue = "0"
    secondInt = secondValue!
}
if thirdValue != nil {
    thirdInt = thirdValue!
} else {
    thirdValue = "0"
    thirdInt = thirdValue!
}
var z1 = Int(firstInt)
var z2 = Int(secondInt)
var z3 = Int(thirdInt)
var sum = z1!+z2!+z3!

print ("сумма \(firstInt) + \(secondInt) + \(thirdInt) = \(sum)")
