//свойства типов
//свойства самих классов/структур/енамов (по сути статическое свойство)

class Human {
    var name: String
    static let maxAge = 100
    var age: Int {
        didSet {
            if age>Human.maxAge {
                age=oldValue
            }
        }
    }
    
    init(name:String, age:Int) {
        self.name = name
        self.age = age
    }
}

let human00 = Human(name: "Peter", age: 19)
human00.name

struct Cat {
    var name:String
    static let maxAge = 20 //статичное свойство задаем с помощью СТАТИК
    static var totalCats = 0
    var age: Int {
        didSet {
            if age>Cat.maxAge { //К СТАТИЧНОМУ СВОЙСТВУ ОБРАЩАЕМСЯ ПО ТИПУ
                age=oldValue
            }
        }
    }
    init(name:String, age:Int){ //переинициализировали конструктор что бы добавить счетчик в статическом свойстве в конце
        self.name = name
        self.age = age
        Cat.totalCats+=1
    }
}

var cat00 = Cat(name: "Whiten", age: 10)//статичное свойство в конструктор не пишем
Cat.totalCats
var cat01 = Cat(name: "Pushok", age: 2)
Cat.totalCats
var cat02 = Cat(name: "Barsik", age: 3)
Cat.totalCats
//свойство тоталкэт увелицивается при каждой инициализации



enum Direction {
    static let enumDescription = "Direction in the game"
    case Left
    case Right
    case Top
    case Bottom
    var isVertical: Bool {
        return self == .Top || self == .Bottom
    }
    var isHorizontal: Bool {
        return !isVertical
    }
}
Direction.enumDescription
let d = Direction.Right
d.isVertical
d.isHorizontal
//пример компутед пропертис для енума

//можно зарядить глобальную переменную для какой-то общей проверки для всего
//Глобальная переменная пишется с большой буквы кемел кейсом
//lazy stored properie
//lazy var story = "this is the story" определяется как нил и не нужно добавлять в конструктор


//создать структуру описание файла - содержит путь к файлу имя максимальный размер на диске путь к папке содержащей файл тип файла (скрытый нет) содержимое файла (строка наример)
//сделать это используя свойства соответствующие

//Енум цветовой гаммы интеджер 3 байта, у этого енама три свойства - кол-во цветов, начальный цвет, конечный цвет

//класс человек, макс вес макс возраст, макс длина имени,фамилии, свойство которое содержит количество созданных объектов 
