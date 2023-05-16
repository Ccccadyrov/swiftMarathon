//failable init
//deinit
//подключили фоундайшн
//скопировали класс хуман с прошлого урока
import Foundation

class Human {
    var weight:Int
    var age:Int
    init (weight:Int, aage:Int){
        self.weight = weight
        self.age = aage
    }
    convenience init(age:Int) {
        self.init(weight: 0, aage: age)
    }
    convenience init(weight:Int) {
        self.init(weight: weight, aage: 0)
    }
    convenience init() {
        self.init(weight: 0)
    }
    func test(){}
}

enum Color: Int {
    case Black
    case White
    init?(value:Int) {
        switch value {
        case 0: self = .Black
        case 1: self = .White
        default: return nil
        }
    }
}
//создали фейлбл(проваливающийся) инициализатор он идет со знаком вопроса потому что может вернуть нил

let a = Color(value: 1)//соответственно если велью = попал в кейс - вернется нил
a!.rawValue
let b = Color(rawValue: 0)//дефолтный инициализатор
//оба инициализатора возвращат фейлбл (опциональное)

struct Size {
    var width:Int
    var height:Int
    init?(width:Int, height:Int) {
        self.width = width
        if width < 0 {return nil}
        self.height = height
        if height < 0 {return nil}
    }
}
var bb = Size(width: 2, height: 2)
var bc = Size(width: 3, height: -3)
//сделали проверку структуры если отрицательное - вернет нил

//далее классы - там сложнее

class Friend {
    var name: String
    init?(name:String) {
        if name.isEmpty {
            return nil //раньше так было нельзя
        }
        self.name = name
    }
}

let F = Friend(name: "")
//опциональные движухи специфично работают в случае с наследованием классов - аккуратно
//читать на свифтбук и в доке

//ДЕИНИЦИАЛИЗАТОРЫ
//перед удалением объекта из памяти вызывает деинициализатор деинит
/*
 deinit {
 print ("Start deinit")
 }
*/
//деиниты на начальном этапе как правило не нужны
//деинит вызывается для всей иерархии классов
