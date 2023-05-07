//homework
//базовый класс артист у него имя и фамилия и есть метод "когда выступают"
//у каждого будет свое выступление (танцует, поет и т.д)
//Художнику нельзя менять имя фамиилию - меняет на свое, когда вызывают метод выступление пишет кто выступает имя фамилию + выступление
//положить артистов в массив и вывести метод выступление еще что-то



print("START")
class Artist {
    var name:String
    var show:String
    func showing(){
        print ("Выступает \(name) с номером \(show)")
    }
    init (name:String, show:String) {
        self.name = name
        self.show = show
    }
}

class Dancers:Artist{}
var dancer = Dancers(name: "Ivan", show: "Dance")
dancer.showing()

class Painter:Artist{
    override var name: String {
        didSet {
            print("\(oldValue)")
            super.name=oldValue//Узнать почему тут супер а не селф
        }
    }
}

var painter = Painter(name: "Vasya", show: "Picture")
painter.showing()
painter.name = "azaa"
painter.name

var array:[Artist]=[dancer, painter]
for man in array {
    print("\(man.showing())")
}
/*
 willSet срабатывает перед тем как будет установлено новое значение, и ты даже можешь знать какое по переменной newValue
didSet срабатывает тогда. когда новое значение уже установлено!тут ты можешь получить доступ и к уже установленному значению, так и к старому по переменной oldValue
например если в твоем коде где
 var accessLevel = 0
 внизу написать

 accessLevel = 1
 то сначала сработает

 willSet //  accessLevel = 0,  newValue  = 1,
 а потом

 didSet  //  accessLevel = 1,  oldValue  = 0

 */


//создать базовый класс транспортное средство скорость вместимость и стоимость перевозки - все компутед, далее создать несколько дочерних классов и переопределить это компутед свойство (именно через наследование)
//ТС создать самолет корабль машина поезд, метод считает стоимость и время в зависимости от расстояния, посчитать стоимость для н-человек
//рассчитать сколько надо будет времени поездок и общая стоимость

class Transport {
    var speed:Int {
        0
    }
    var passengers:Int {
        0
    }
    var cost: Int {//стоимость указана за единицу пути (фиксированную для всего транспорта)
        0
    }
    //пишем функцию принимающую количество пассажиров и выдающую количество рейсов и стоимость всей перевозки за единицу пути
    func costDelivery (howManyPeopleGo:Int)->String { //возвращает массив
        var rides:Double = (Double(howManyPeopleGo)/Double(passengers))
        if howManyPeopleGo <= 0 {
            print ("DONT GIVE ZERO")
            return "НЕ ВВОДИ НОЛЬ"
        }
        var z = Int(rides)+1
        if rides<Double(z) {
            rides = Double(z)
        }
        return ("на \(howManyPeopleGo) пассажиров понадобится \(rides) поездок")
    }
}

class Car:Transport {
    override var speed:Int {return 60}
    override var passengers: Int {return 4}
    override var cost: Int {return 1}
}
var car=Car()
car.costDelivery(howManyPeopleGo: 0)

class SmallAirbus:Transport {
    override var speed: Int {500}
    override var passengers: Int {100}
    override var cost: Int {300}
}

var smallAir = SmallAirbus()

class Boat:Transport {
    override var speed: Int {50}
    override var passengers: Int {200}
    override var cost: Int {25}
}

var boat = Boat()

var arrayCost:[Transport] = [car, smallAir, boat]

for item in arrayCost {
    print("\(item.costDelivery(howManyPeopleGo: 100)) по цене \(item.cost) за штуку")
}


//пять разных классов люди обезьяны собаки жирафы крокодилы - создать родительский для группировки, создать пару объектов каждого класса, посчитать пресмыкающихся массивом
//посчитать четвероногих? животных? живых существ, объединять по родительскому признаку


class Transport2 {
    var speed:Int {
        20
    }
    var passengers:Int {
        5
    }
    var cost: Int {//стоимость указана за единицу пути (фиксированную для всего транспорта)
        5
    }
    var howManyPeopleGo: Int
    
    var costDelivery : String {
        get {
        var rides:Double = (Double(howManyPeopleGo)/Double(passengers))
        if howManyPeopleGo <= 0 {
            print ("DONT GIVE ZERO")
            return "НЕ ВВОДИ НОЛЬ"
        }
        var z = Int(rides)+1
        if rides<Double(z) {
            rides = Double(z)
        }
        return ("на \(howManyPeopleGo) пассажиров понадобится \(rides) поездок")
            
        }
    }
    init (hovPeople:Int) {
        howManyPeopleGo = hovPeople
    }
    
}

var test = Transport2(hovPeople: 30)
test.costDelivery
