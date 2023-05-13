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


class Student:Human {
    var firstName:String
    var lastName:String
    
    init(firstName:String, lastName:String) {
        self.firstName=firstName
        self.lastName=lastName
        super.init(weight: 0, aage: 0)
        self.weight = 50
    }
    
    convenience init(firstName:String){
        self.init(firstName: firstName, lastName: "")
        self.age = 30
    }
}

class Doctor:Student {
    var fieldOfStudy:String //надо либо дать дефолт значение ="знач" либо создать дезигнатед инит
    init (fieldOfStudy:String) {
        self.fieldOfStudy = fieldOfStudy
        super.init(firstName: "Doctor", lastName: "House") //тут вызвать можем только полный дезигнатед инит
    }
}

//если мы в дочернем классе не определяем свой дезигнатед - мы унаследуем все его дезигнатед и конвиниенс иниты

class Doctor1:Student {
    var fieldOfStudy:String = " "
}
let d1 = Doctor1(firstName: "Ivan")
let d2 = Doctor1(firstName: "Petya", lastName: "Petrov")
//классу доктор1 мы не задали инициализаторов и дали дефолт значение филдофстади - поэтому унаследовали все иниты родителя

class Doctor2:Student {
    var fieldOfStudy:String = " "
    convenience init (fieldOfStudy:String) {
        self.init(firstName: "Doctor1", lastName: "House1")//ТУТ СЕЛФ ПОТОМУ ЧТО МЫ УЖЕ УНАСЛЕДОВАЛИ ИНИТ ОТ РОДИТЕЛЯ
        self.fieldOfStudy=fieldOfStudy
    } //Этот пример профитнее чем класс Доктор - так как мы наследуем все иниты родителя + подтягиваем инит для филд оф стади
}
let d21 = Doctor(fieldOfStudy: "text") //появились все иниты. Далее пример если нужен дезигнатед инит

class Doctor3:Student {
    var fieldOfStudy:String
    init (fieldOfStudy:String) {
        self.fieldOfStudy = fieldOfStudy
        super.init(firstName: "Doctor", lastName: "House")
    } //Если мы уже сделали дезигнатед инит, но хотим вернуть родительские - нужно переопределить все родительские дезигнатед инит
    override init(firstName: String, lastName: String) {
        self.fieldOfStudy = "Biology" //сначала установили свое проперти, далее вызвали супер инит
        super.init(firstName: firstName, lastName: lastName)//значения параметров ушли с оверрайда, а сам инит с родителя (Студент)
    }
}
var d31 = Doctor3(firstName: "Gosha", lastName: "Popov")
var d32 = Doctor3(firstName: "Pasha") //этот инит мы отжали у конвиниенс инит студента потому что переопределили 100% дезигнатед инитов у родителя (в данном случае такой инит был один)
//Доступа к инитам хьюман мы не получаем потому что класс студент не переопределяет все дезигнатед иниты родителя(хьюмана) но если мы сделаем оверрайд веса и возраста в студенте - нужные иниты появятся. Но тогда придется оверрайдить в докторе уже оверрайднутый в студенте инит
//Избежим возни выше оверрайднув дезигнатед инит как конвиниенс инит на примере-деблере класса студент - ниже
class Student2:Human {
    var firstName:String
    var lastName:String
    
    init(firstName:String, lastName:String) {
        self.firstName=firstName
        self.lastName=lastName
        super.init(weight: 0, aage: 0)
        self.weight = 50
    }
    override convenience init(weight: Int, aage: Int) {
        self.init(firstName: " ")//вот инициализатор для комментария выше (если что тут делегируем в метод ниже)
        self.age = aage
    }
    
    convenience init(firstName:String){
        self.init(firstName: firstName, lastName: "")
        self.age = 30
    }
}
class Doctor4:Student2 {
    var fieldOfStudy:String
    init (fieldOfStudy:String) {
        self.fieldOfStudy = fieldOfStudy
        super.init(firstName: "Doctor", lastName: "House")
    } //Если мы уже сделали дезигнатед инит, но хотим вернуть родительские - нужно переопределить все родительские дезигнатед инит
    override init(firstName: String, lastName: String) {
        self.fieldOfStudy = "Biology" //сначала установили свое проперти, далее вызвали супер инит
        super.init(firstName: firstName, lastName: lastName)//значения параметров ушли с оверрайда, а сам инит с родителя (Студент)
    }
}
let d41 = Doctor4(weight: 25, aage: 11)

//ОБОБЩАЕМ
/*
 у нас есть дезигнатед методы и конвиниенс, дезигнатед методы устанавливают сторед проперти и вызывают дезигнатед методы родителя, если он есть
 Конвиниенс - вызывают дезигнатед методы своего класса, они нужны для удобства (даны не все параметры или еще что-то)
 Для того что бы унаследовать все конвиниенс методы - дочерний класс должен либо: 1) не иметь ни одного своего дезигнатед метода или 2) если у него есть свой дезигнатед инит - он должен переопределить все родительские дезигнатед инит
 Какие-то методы можем переопределить в конвиниенс инит либо можем оверрайднуть дезигнатед инит, после того как все сделали - можем добавлять свои конвиниенс
 */
