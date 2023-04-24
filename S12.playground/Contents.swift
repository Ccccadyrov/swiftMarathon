//enumerations енумы
//группа констант объединенных по какому-то параметру
//value type


enum Action {
    case Walk(meters:Int) //собственный тип и собственное значение, это не строка "Walk"
    case Run(meters:Int)
    case Stop
    case Turn(Direction)
    
    enum Direction {
        case Left
        case Right
    }
}

var action = Action.Run(meters: 20)
action = .Stop
action = .Walk(meters: 20)
action = .Run(meters: 109)
action = .Turn(.Left)
//ассоциативные значения (указаны в скобках енума)

switch action {
case .Stop: print("Stop")
case .Walk(let meters): print ("\(meters)")
case .Run(let meters) where meters<100:print("Short")
//case .Run(let meters):print("Long")
case .Run(meters: 100...110):print("WORK")
case .Turn(.Left): print ("u turn Left")

default: break
}
//raw value

enum test:String {
    case Left = "Left"
}
test.Left.rawValue //получили строку

//сделать енум с шахматными фигурами каждая фигура имеет ассоциативное - цвет:белый/черный, координата буквы и координата цифры
//инициализировать несколько фигур с позициями и цветами в позиции черному королю мат
//положить все эти фигуры в массив каждой фигуре роуВелью типа стринг
//функция принимает фигуру - распечатывает тип цвет и позицию а так же функция для массива фигур и говорит где какая расположена
//Создать функцию которая будет рисовать доску юникодом, функция принимает массив фигур и рисует доску в консоли
//функция принимает шахматную фигуру параметром и тюпл(буква/цифра) с новой позицией (в идеале ограничить ходы)
