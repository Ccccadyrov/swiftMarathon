//subscript

let array = ["a", "b", "c", "d"]
array[0]

//сабскрипт - обращение через квадратные скобки по индексу (к экземпляру) может принимат инт, стринг и т.д.
//применяются к классам структурам енумам могут иметь несколько значений

struct Family {
    var father = "Father"
    var mother = "Mother"
    var kids = ["Kid1", "Kid2", "Kid3"]
    
    var count:Int {
        get {
            return 2+kids.count
        }
    }
    
    subscript(index:Int) -> String? {
        get { //сеттеры так-же работают
            switch(index) {
            case 0: return father
            case 1: return mother
            case 2..<(2+kids.count): return kids[index-2]
            default: return nil
            }
        }
    }
}

var family = Family()
family.father
family.count
family.kids[0]
family[0]
family[2]//работаем через сабскрипт
//family[0]="DAD"  сработало бы если бы прописал сеттер


struct Field {
    
    var dict = [String: String] ()
    
    subscript(column: String, row: Int) -> String? {
        get {
            return dict[column+String(row)]
        }
        set {
            dict[column+String(row)] = newValue
        }
    }
}

var field = Field()
field["a", 5]
field["a", 5] = "X"
field["a", 5]

//шахматная доска, когда по сабскрипту обращаемся к ячейке - узнаем ее цвет (лучше из енума), если вне поля - то нил
//крестики нолики, создать поле, ячейка содержит пусто крестик или нолик + возможность распечатать, по сабскрипту обращаемся к ячейке и ставим значение

struct ChessBoard {
    var LetterArray = ["a", "b", "c", "d", "e", "f", "g", "h"]
    subscript (number:Int, letter:String) -> String {
        get {
            if (((LetterArray.firstIndex(of: letter))!+1)+number)%2 == 0{
                return "Black"} else {return "White"}
        }
    }
}

var squad = ChessBoard()
squad[2,"b"]
