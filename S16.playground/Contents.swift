//методы
//методы могут принадлежать не только классам но структурам и енумам

struct Point {
    var x:Int
    var y:Int
    mutating func move (x:Int, byY y:Int){ //mutating говорит о том что будем менять свойства
        self.x += x
        self.y += y
    }
}

func move(point: inout Point, byX x:Int, byY y:Int) -> Point {
    point.x+=x
    point.y+=y
    return point
}

var p = Point(x: 1, y: 1)
move(point: &p, byX: 2, byY: 3)
p.move(x: 10, byY: 1)

enum Color {
    static func numOfElements ()-> Int{
        print ("enum")
        return 2
    }
    case White
    case Black
    
    mutating func invert () {
        if self == Color.White {
            self = Color.Black
        } else {
            self = Color.White
        }
    }
}
var c = Color.Black
c
c.invert()
c
Color.numOfElements()//статик вызывается по енаму

//в классе нет мутатинг
//методы типа для структуры, енама используем статик
//если используем селф внутри метода типа (не экземпляра, то селф уже указывает на тип)

//осздать тип комната с высотой и шириной
//тип персонаж с координатой х,у - позиция в комнате
//функция распечатывает комнату и персонажа
//персонажу метод идти влево вправо енумом
//персонаж не может выйти за пределы комнаты
//создать тип ящик с координатой х,у - он тоже не может покидать пределы комнаты
//персонаж двигает ящик они оба не могут выйти за пределы поля
//добавить финальную точку для ящика что бы выиграть
