//fuctions функции
//пишем по принципу DRY не повторяться

func calculateMoney (wallet: [Int]) -> Int {
    var sum = 0
    for value in wallet {
        sum = sum+value
    }
return sum
}

var wallet1 = [100, 5, 1, 5, 20, 100]

calculateMoney(wallet: wallet1)
let money = calculateMoney(wallet: wallet1) //money = return
print(money)
//значения value type, копируются (не для классов)
//
func calculateMoney2 (wallet: [Int], type:Int) -> Int {
    var sum = 0
    for value in wallet {
        if value == type {
            sum+=value
        }
    }
return sum
}
calculateMoney2(wallet: wallet1, type: 100)
//посчитали только сотки
calculateMoney2(wallet: wallet1, type: 5)
//только пятерки

func calculateMoney3 (wallet: [Int], type:Int) -> (Int, Int) {
    var sum = 0
    var count = 0
    for value in wallet {
        if value == type {
            sum+=value
            count+=1
        }
    }
return (sum, count)
}

let (money4, count) = calculateMoney3(wallet: wallet1, type: 100)
money4
count
//вернули тьюпл

func calculateMoney(inSquence:Int...)->Int {
    var value = 0
    for val in inSquence {
        value += val
    }
    return value
}

calculateMoney(inSquence: 5,5,1,3,5)


func sayHi () {
    print("Hi")
}

let hi = sayHi
hi()

func sayPhrase(phrase:String) -> Int {
    print(phrase)
    return 0
}
let says = sayPhrase
says("BueBue")

//in out - изучить
//Шахматные клетки, функция принимает строку и символ (а5 б6 и тд) потом возвращает белое/черное, потом значение константе и распечатать константу
//создать массив и функцию принимающую массив и возвращающую в обратном порядке
//функция принимает массив и с помощью инаут меняет массив внутри функции (в обратном порядке)
//функция принимает строку и возвращает строку без всех знаков препинания, все гласные перевести в заглавные цифры заменить на one\two и тд
func chessDeck (letter:String, number:Int) {
    var S:Int
    var N = number
    var check:Int
    switch letter {
    case "A", "a", "C", "c", "E", "e", "G", "g": S=1
    default: S=0
    }
    check = S+N
    if check%2==0 {
        print("Black")
    } else {
        print ("White")
    }
}
chessDeck(letter: "a", number: 2)

var numberArray = [1, 2, 3, 4, 5, 6, 7, 8, 9]
numberArray.count

func sortBack (Array:Array<Int>) -> Array<Int> {
    var z=Array.count-1
    var new = Array
    for i in 0...z {
        new.append(Array[z-i])
        new.removeFirst()
//        print(new)
    }
    return new
}
var lookArray = sortBack(Array: numberArray)
print(lookArray)

var numberArray2 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
print(numberArray2)
func sortBack2 (Massive: inout Array<Int>) {
    for i in 0...Massive.count-1 {
        Massive.append(Massive.count-i)
        Massive.removeFirst()
    }
}
sortBack2(Massive: &numberArray2)
print(numberArray2)

var numberArray3 = [1,2,3,4,5,6,7,8,9]
func sortWithoutRemove(Array: inout Array<Int>) {
    for i in 0...Array.count-1 {
        Array[i]=Array.count-i
        print(Array)
    }
}
sortWithoutRemove(Array: &numberArray3)

var letterString = "1 egg, 2 no egg, noegg, 3,4,5"
func mutateString(String: inout String) {
    for i in String {
        switch i {
        case 1: i="one"
        case 2: i="two"
        default: i=i
        }
    }
}
mutateString(String: &letterString)
