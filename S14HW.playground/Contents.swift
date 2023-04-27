struct Student {
    var name:String {
        didSet {
            print ("\(oldValue) было изменено на \(name)")
        }
    }
    var lastName:String
    var birthYear:Int
    var nowOld:Int {
        get {
            return 2023 - birthYear

        }
        set {
            birthYear = 2023 - newValue
        }
    }
}

var student00 = Student(name: "Ivan", lastName: "Ivanov", birthYear: 1993)
student00.name = "Vasya"
student00.nowOld
student00.nowOld = 22
student00.birthYear
student00.lastName


struct Line {
    var coordOne:Int
    var CoordTwo:Int
    var lenght:Int {
        get {return CoordTwo-coordOne}
        set {
            CoordTwo=coordOne+newValue
        }
    }
    var midPoint:Int {
        get {return coordOne+(lenght/2)}
        set {
            coordOne = coordOne + (newValue-midPoint)
            CoordTwo = CoordTwo + (newValue-midPoint)
        }
    }
}

var line01 = Line(coordOne: -9, CoordTwo: 9)
line01.lenght = 9
line01.CoordTwo
