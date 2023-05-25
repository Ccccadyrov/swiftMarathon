//Extencions
//Расширения
//Расширения позволяют расширить функционал класса/типа
//при создании экстеншена используем вычисляемые свойства (так как сторед проперти уже заданы при создании класса)
//можем добавлять методы как экземплярам так и типам, можем добавлять инициализаторы (конвиниенс)
//Сабскрипты, неститайпс, можем делать так что тип будет исполнять протокол

extension Int {
    var isEven:Bool {
        return self % 2 == 0
    }
    var isOdd:Bool {
        return self % 2 != 0
    }
    enum EvenOrOdd { //Вложенный тип
        case Even
        case Odd
    }
    var evenOrOdd:EvenOrOdd { //переменная типа енума выше
        return isEven ? .Even : .Odd //Если исИвен тру - возвращаем Ивен, иначе Одд
    }
    func pow(value:Int) -> Int {
        var temp = self
        for _ in 1..<value {
            temp *= self
        }
        return temp
    }
    mutating func powTo (value:Int) {//мутация ибо меняем основное значение
        self = pow(value:value)//непонятный момент, просто велью не жрет
    }
}

extension Int.EvenOrOdd { //расширение для расширения
    var string:String {
        switch self {
        case .Even: return "EVEN"
        case .Odd: return "ODD"
        }
    }
}

var a=5
if a.isOdd {
    print ("NECHET")
}
//расширение возвращает тру или фолс, далее в условии ИФ если тру то принт

a.evenOrOdd
a.evenOrOdd.string
a.pow(value: 2) //5 во второй = 25

a.powTo(value: 2)
a //изменилось непосредственно а

let s = "Hello world!"
let start = s.startIndex
let end = s.index(start, offsetBy: 5)
s[start..<end] //сабскрипт


//добавить инту методы для положительного и отрицательного
//булево значение если инт 0 то фалс иначе тру
//возвращает количество символов в числе
//добавить инту сабскрипт который возвращает символ по номеру в строке

//для строки сделать вырезать через старт - рендж

