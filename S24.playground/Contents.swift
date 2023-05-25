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
}

extension Int.EvenOrOdd { //расширение для расширения
    var string:String {
        switch self {
        case .Even: return "EVEN"
        case .Odd: return "ODD"
        }
    }
}

let a=5
if a.isOdd {
    print ("NECHET")
}
//расширение возвращает тру или фолс, далее в условии ИФ если тру то принт

a.evenOrOdd
a.evenOrOdd.string
