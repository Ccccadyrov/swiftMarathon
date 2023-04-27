//properties свойства
//stored properties - свойства экземпляров/объектов которые сохраняют данные
//computed properties - вычисляемые свойства
import Foundation

struct Student {
    var firstName: String //stored properties - хранит данные
    //мы можем отловить момент перед установкой свойства и после установки свойства
    {
        willSet(newFirstName){
        print ("willset " + newFirstName + " instead of " + firstName)//фест нейм еще в старом значении (по умолчанию newValue)
    }
        didSet(oldFirstName) {
            print ("did set " + firstName + " instead of " + oldFirstName)//фест нейм уже в новом значении (по умолчанию oldValue)
            firstName = firstName.capitalized //это метод Foundation делает имя с большой буквы
        }
    }
    
    var lastName: String {
        didSet {
            lastName = lastName.capitalized //это метод Foundation делает имя с большой буквы
        }
    }
    var fullName: String {
        get {return firstName + " " + lastName} //это геттер и записывать так правильнее
        //это computed properties задать в конструкторе его не получится
    
    set (newValue) {
        print("FullName new " + newValue)
        let words = newValue.components(separatedBy: " ")//мы разбили строку из 2 слов на массив с 2 элементами и поменяли имя и фамилию исходя из 3 свойства
        firstName=words[0]
        lastName=words[1]
    }
    }
}

var student01 = Student(firstName: "Alex", lastName: "Skutarenko")//в конструкторе наблюдатель свойств не вызывается
student01.firstName
student01.firstName = "IGOR"
//willset - то что сейчас произойдет
//didset можно использовать для проверки нового значения (в примере мы делаем имя с большой буквы) (проверять возраст/длину строки и т.д)
student01.firstName = ("pAVEL") //ввели неверно
student01.firstName //отображается верное
student01.fullName //очевидно это свойство должно складываться из firstName и fullName
student01.fullName = "Ivan Ivanov"
student01.firstName
student01.lastName


//повторить все сделаное
//попытаться воспроизвести из памяти
//для этого же студента добавить дату рождения из структуры день/месяц/год
//компутед проперти считающее сколько студенту лет на основании даты рождения
//компутед проперти сколько студент учился (с 6 лет например)


//создать структуру отрезок содержит точку а и б сторед пропертис
//2 компутед пропертиес - мидпоинт, и длина
//Если я двигаю мидпоинт то двигается и точка а и точка Б
//Если устанавливаю длину - двигается точка Б точка А на месте
