//инициализаторы
//цель инициализации - установить каждое свойство (не опциональное)
//ПРОЧИТАЙ ГЛАВУ ПРОЧИТАЙ ГЛАВУ

class Student1 {
    var firstName: String
    var lastName: String
    var fullName: String {
        return firstName + " " + lastName
    }//computed propertie с одним геттером
    //инициализаторы нужны только для сторед проперти
    init() {
        self.firstName = " "
        self.lastName = " "
    }//использовали дефолтный инициализатор, который "ничего не делает"
}

let s1 = Student1()

class Student2 {
    var firstName = ""
    var lastName = ""
} //Дали дефолтные значения теперь инициализация не требуется
let s2 = Student2()

class Student3 {
    var firstName: String
    var lastName: String
    init (firstName:String, lastName:String) {
        self.firstName=firstName
        self.lastName=lastName
    }//инициализатор принимающий значения (у структуры такой генерируется автоматически)
}

let s3 = Student3(firstName: "Alex", lastName: "NoAlex")

class Student4 {
    var middleName:String? //опциональное свойство, его инициализировать не обязательно
}

class Student5 {
    let maxAge:Int
    init () {
        maxAge = 100
    }//константы можно инициализировать
}
let s5 = Student5()
//s5.maxAge = 35 изменить константу нельзя, в дочернем классе переинициализировать родительскую константу нельзя


//Структуры
struct Student7 {
    var firstName: String
    var lastName: String
}
let s7 = Student7(firstName: "Imya", lastName: "Familiya")
//у структуры отрабатывает дефолтный конструктор
//Но можно по дефолту инициализировать значения, тогда нужно будет добавлять конструктор вручную

/*___________________________________________________________________________________________________*/

//designated - главные инициализаторы, они непосредственно осуществляют установку значения в проперти
//до этого мы работали только с ними
class Human {
    var weight:Int
    var age:Int
    init (weight:Int, aage:Int){
        self.weight = weight
        self.age = aage
    }
    convenience init(age:Int) {
        self.init(weight: 0, aage: age)
    }//конвинианс инициализатор - ссылается на первый инит делая вейгт дефолтным а айдж берет из параметра
    convenience init(weight:Int) {
        self.init(weight: weight, aage: 0)
    }
    //создали второй конструктор на каждый случай, когда мы не знаем какой-либо параметр
    convenience init() {
        self.init(weight: 0)
    }//cоздали инициализатор без значений, который вызывает инит выше который в свою очередь вызывает инит выше и так до деизнатед инициализатора
    
    func test(){} //тестовый метод для работы с дочерним классом
}

let h1 = Human(weight: 70, aage: 25)
let hh1 = Human(age: 20)
hh1
let h3 = Human()
h3
//save check Конвиниенс всегда заканчивается на дезигнатед

class Student:Human {
    var firstName:String
    var lastName:String
    
    init(firstName:String, lastName:String) {
        //self.weight = 50 --- weight еще не инициализирован поэтому трогать его нельзя
        self.firstName=firstName
        self.lastName=lastName
        super.init(weight: 0, aage: 0) //вызвали инициализатор для родителя (Можно было указать 4 параметра и не передевать 2 сюда)
        self.weight = 50 //после того как инициализировали родительское свойство - можем его менять
    }
    
    convenience init(firstName:String){
        self.init(firstName: firstName, lastName: "")
        self.age = 30
    }//вызвали неполный инит если не пришел ластнейм - сослались на свой (базовый) инит выше
    //обращаться ни к каким свойствам и методам нельзя, пока не вызвали инит
}
//инициализируем сначала дочерние свойства а потом свойства родителя
//ДЕЗИГНЕТ ИНИТ ССЫЛАЕТСЯ ТОЛЬКО НА ДЕЗИГНЕД ИНИТ
let student1 = Student(firstName: "oneName")
student1
let student2 = Student(firstName: "imya1", lastName: "familiya")
student2//бахнули главный инициализатор - поэтому возраст не установился
//в момент инициализации или дефолтного значения - не вызывается родительский обсервер (вроде это хорошо)
//ПРОЧИТАЙ ГЛАВУ ПРОЧИТАЙ ГЛАВУ
