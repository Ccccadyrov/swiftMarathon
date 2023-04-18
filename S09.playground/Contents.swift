//Оператор switch
var age = 60
switch age {
case 0...16: print("Schoold")
case 17...21: print("Student")
case 22...50: print("old man")
case 50...80: break
default:break //брейк выбрасывает из цикла, свитча
}
//свитч требует определения всех значений, в неопределенные значения выполняется дефолт
//оператор falltrought перебрасывает на следующую строку игнорируя условие

var name = "Alex"
switch name {
case "Alex" where age<17: print("Hi school Alex")
case "Alex" where age>16: print("Hi student Alex")
default: break
}


switch (name, age) {
case("Alex", 60): print("Hi old Alex")//что бы кейс сработал - оба параметра должны совпасть
case("Alex",_):print("Hi all Alex")//выполнился первый свитч - до этого не дошло, есть поменять возраст - дойдет
case(_, let number) where number>=65&&number<=70: print("Hi oldman")//value bunding связали намбер со 2 параметром
default: break
}

//pattern matching метод от эппл (совпадение паттернов)

var point = (5,5)
switch point {
case let (x,y) where x == y: print("coordinates match")
case let (x,y) where x == -y: print("module coordinates match")
default: break
}
//строка 200 символов - цикл свич считающий гласные согласные цифры через свитч
//свитч принимающий возраст и выдающий этап жизни
//студент Ф И О - три строки, если имя с А или О обращаться по имени, если отчество с В или Д по имени+отчеству, если фамилия с Е или З - только по фамилии, иначе по ФИО
//морской бой 10х10 поле, свитч получает поинт (1:1) - вернуть значение мимо ранил убил (на поле есть немного кораблей)

var bigString:String = "random text 12345 text text textrandom text 12345 text text textrandom text 12345 text text textrandom text 12345 text text textrandom text 12345 text text textrandom text 12345 text text text12398120"
bigString.count
var z = 0
for characterCheck in bigString {
    switch characterCheck {
    case "1", "2", "3", "4", "5", "6", "7", "8", "9", "0": z=z+1
    default: z=z+0
    }
}
print("всего цифр \(z)")


var studentName = ("Blexey", "Shishov", "Ivanivich")

studentName.0.hasPrefix("A")

switch studentName {
case let (name, _, _) where name.hasPrefix("A"): print("has A")
case let (_, fathername, _) where fathername.hasPrefix("S"): print("Has S")
default:print(studentName)
}
