class Address {
    var street = "Deribasovskaya"
    var number = "1"
    var city = "Odessa"
    var country = "Ukraine"
}

struct Garage {
    var size = 2
}

class House {
    var rooms = 1
    var adress = Address()
    var garage:Garage? = Garage() //не везде есть гараж
}


class Car {
    var model = "Zaporozhec"
    func start (){}
}

class Person {
    var cars : [Car]? = [Car()]
    var house : House? = House()
}

let p = Person()
p.cars![0]
p.house

p.house!.garage!.size //по цепочке узнали размер гаража, но т.к. опциональные типы - если не будет хаус или гаража - программа упадет

if let house = p.house {
    if let garage = house.garage {
        garage.size
    }
}//опшинал бандинг если p.house существует - идем дальше, и т.д. Но если глубина 10-20-30 то уже не удобно

if let size = p.house?.garage?.size {
    size
}
p.house?.garage?.size = 3
p.house?.garage?.size

if (p.house?.garage?.size = 3) != nil { //если при присвоении значение не произошел нил - работаем дальше (грубо говоря узнаем установилось ли свойство)
    print ("upgrade")
} else  {
    print("fail")
}

p.cars?[0].model //Не возвращает нил если промажем с индексом массива знак вопроса проверяет наличие самого массива а не элемента

//if p.cars?[1].start() != nil { //функцией проверяем наличие элемента, так как если нет элемента - функция вернет нил
//    print ("Start not nil")
//} else {
//    print("fail")
//}  НЕ РАБОТАЕТ НЕ РАБОТАЕТ


//type casting - прочитать

class Symbol {
    
}

class A: Symbol {
    func aa(){}
}

class B: Symbol {
    func bb(){}
}

let array : [Symbol] = [A(), B(), Symbol(), A(), B()] //Под тип массива symbol попадают все дочерние классы

var aCount = 0
var bCount = 0

for value in array {
    if value is A {  //оператор is возвращает булево значение, принадлежит ли велью А
        aCount+=1
    } else if value is B {
        bCount+=1
    }
    
    if let a = value as? A { //Оператор as делает переменную а к типу А (Знак вопроса потому что велью может быть не только А (Но и В)
        a.aa() //мутно - перечитать
    } else if let b = value as? B {
        b.bb()
    }
}
aCount //посчитали объекты типа A
bCount //посчитали объекты типа В

let array2:[AnyObject] = [A(), B(), Symbol(), A(), B()] //теперь в массив можно положить любой объект
let array3:[Any] = [A(), B(), Symbol(), A(), B(), "A", 6, {() -> () in return}] //теперь в массив можно засунуть вообще все

//Сделать класс человек, у него проперти папа мама братья сестры - массивы опционально
//Человек сделать 30 поставить папу маму им тоже поставить папов мамов все опционально
//посчитать двоюродных братьев троюродных сестер и тд


//сделлать классы мужчина/женщина
//у мужчин сделать метод двигать диван у женщин мыть посуду
//Уложить всех в массив фемили, пройтись по массиву и посчитать мужчин и женщин и вызвать метод  каждого


//расширить класс человек и добавить проперти живетное петс может быть не быть а может быть разное
//пройти по всему массиву проверить есть ли питомец и добавлять в массив, получить массив животных


//все животные унаследованы от класса животных у него есть метод издать звук, у дочернего класса этот метод издает разный звук
