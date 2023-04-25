//классы и структуры
//классы структуры помещаются в отдельные файлы, в свифте структуры имеют большую значимость чем в обжС
let student1 = (name:"alex", age:20)
let student2 = (name:"Bob", age: 22)
student1.name
student2.age
//инструкция говорит какие у объекта должны быть свойства и методы

class Student {
    var name = "No name"
    var age = 20
}

let student01 = Student()
student01.name = "Alexey"
student01.age = 21
//создали класс с параметрами по умолчанию и далее создали экземпляр класса (объект) и поменяли параметры
//если свойства класса имеют опциональный тип - их можно не заполнять


class School2 {
    var name: String?
    var age: Int?
}//класс с двумя опциональными типами, не требует конструктор и наличия этих свойств у объекта
//Если свойства не опшионал - мы обязаны создать конструктор (конструктор ниже)
class School {
    var name: String
    var age: Int
    
    init() {
        name = "No Name"
        age = 20
    }
}//функция init самый простой конструктор, задает параметры в теле класса

class School3 {
    var name: String
    var age: Int
    
    init(_name: String, _age: Int) {
        name = _name
        age = _age
    }
}
var schoolboy3 = School3(_name: "PETYA", _age: 11) //выше создали конструктор который сразу принимает наши параметры
//с нижним
class School4 {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}//используем селф и можем делать одинаковые имена у свойства класса и локальной переменной инициализатора
var schoolboy4 = School4(name: "Alyosha", age: 12)

var cloneSchool = schoolboy4
print(cloneSchool.age, cloneSchool.name)
print (schoolboy4.age, schoolboy4.name)
//присвоили один экземпляр класса другому, сейчас они имеют равные значения (чекай принт)

cloneSchool.name = "LYOHA"
print(cloneSchool.age, cloneSchool.name)
print (schoolboy4.age, schoolboy4.name)
//сейчас поменяли один параметр у одного экземпляра, но изменились оба значения

func addOneYear (student:School4) {
    student.age+=1
}

addOneYear(student: schoolboy4)
schoolboy4

schoolboy3

var arrayClass  = [schoolboy3]

arrayClass[0]
arrayClass[0].age=22
arrayClass[0]
schoolboy3.age
//изначальный экземпляр класса изменился
