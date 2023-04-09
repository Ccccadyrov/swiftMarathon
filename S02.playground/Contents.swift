let bigNumber = 2_123_991_848//для своего удобства можно ставить андерскоры, они не влияют на число, используем для своего удобства
let number  = 255           //десятиричная
let hex     = 0xff          //шестнадцатиричная
let binary  = 0b11111111    //двоичная

Int.max
Int8.min
Int8.max
UInt8.min
UInt8.max

//float 32 битное число с плавающей точкой с точностью 6 знаков после запятой
12.321e2 //умножить на 10 во второй (умножить на сто)
12.982e-2//разделить на 10 во второй (на сто)
0x5p2//p2 d данном случае 2 во второй степени

//доки эпл, три константы инт флоат дабл разные не ноль + 3 константы инт сумма трех флоат сумма трех дабл сумма трех каждому типу задать тип принудительно, создать условие если конст Инт меньше чем дабл - вывести что точнее
let numOne:Int = 12
let numTwo:Float = 22.11
let numTree:Double = 14.88

let sumOne:Int = numOne + Int(numTwo) + Int(numTree)
let sumTwo:Float = Float(numOne) + numTwo + Float(numTree)
let sumTree:Double = Double(numOne) + Double(numTwo) + numTree

if Double(sumOne) > Double(sumTwo) && Double(sumOne) > sumTree {
    print ("Int вычисление самое точное")
} else {
    print ("Int вычисление не самое точное")
}
