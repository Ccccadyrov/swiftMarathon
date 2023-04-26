//Структура студент с именем фамилией годом рождения и средним баллом
//сделать несколько экземпляров с данными, потом положить в массив Журнал студентов
//написать функцию которая принимает массив этих студентов и выводит в консоль данные студентов фио возраст + средний балл + добавить номер студента 1-2-3 и тд

struct Student {
    var name: String
    var surname: String
    var bornYear: Int
    var points: Double
}

var studies01 = Student(name: "Ivan", surname: "Ivanov", bornYear: 1999, points: 4.1)
var studies02 = Student(name: "Petr", surname: "Petrov", bornYear: 1998, points: 4.3)
var studies03 = Student(name: "Irina", surname: "Iri", bornYear: 1999, points: 3.9)
var studies04 = Student(name: "Alise", surname: "Ivanova", bornYear: 1999, points: 3.7)

var studiesJournal = [studies01, studies02, studies03, studies04]

func journalSorted (array:Array<Student>) {
    var z=0
    for i in array {
        z+=1
        print("Student #\(z) \(i.name) \(i.surname) have a ball \(i.points)")
    }
}
journalSorted(array: studiesJournal)

//с помощью функции сортед отсортировать массив по среднему баллу и распечатать массив по порядку баллов
//отсортировать массив по порядку фамилий от а до я
//создать массив со студентами с одинаковой фамилией (в целях эксперемента)

print(studiesJournal.sorted(by: {$0.points > $1.points}))

//сделать константу/переменную и присвоить ей уже ссуществующий массив - далее начать менять существующий массив, средний бал или еще что-то

//далее сравнить массивы - распечатать оба, изменились или нет

//сделать все то-же самое для классов и в конце сравнить результаты опыта с массивами

var newJournal = studiesJournal.sorted(by: {$0.points > $1.points})
print(newJournal)
print(studiesJournal)
studiesJournal[0].name = "NIKOLAY"
print(newJournal)
print(studiesJournal)
//Далее шевелим классы

class clStudent {
    var name: String
    var age: Int
    var points: Double
    
    init (name: String, age: Int, points:Double){
    self.name = name
    self.age = age
    self.points = points
}}

var clStudies01 = clStudent(name: "Petr", age: 22, points: 2.11)
var clStudies02 = clStudent(name: "Ilya", age: 21, points: 4)
var clStudies03 = clStudent(name: "Alyosha", age: 19, points: 3)

var clJournal = [clStudies01, clStudies02, clStudies03]
func clSort(array:Array<clStudent>) {
    var z = 0
    for i in array {
        z+=1
        print("Student #\(z) is \(i.name) have a \(i.points) and \(i.age) YO")
    }
}
clSort(array: clJournal)

clJournal.sorted(by: {$0.points > $1.points})

var clonedClassArray = clJournal
clonedClassArray
clJournal
clJournal[0].name = "ELISTRAT"
clonedClassArray
clJournal
//в классах ссылочный тип данных - значения обоих массивов одинаковые
