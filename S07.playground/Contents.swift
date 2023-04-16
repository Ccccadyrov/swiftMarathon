//Массивы
//массивы так-же бывают let и var, соответственно изменяемые и не изменяемые
let constArray = ["a", "b", "c", "d"]//массив строк
constArray.count
constArray[1]

var array = [String]()
array.isEmpty //array.count==0
array += constArray//добавили другой массив
array += ["e"]
array.append("f")
array
//массив имеет value type (не ссылка, происходит копирование)

array[1...4] //взяли все элементы массива из диапазона
let d=array.count-1
array[2...d]
array.insert("-", at: 2) //вставили - перед элементом с номером [2]
array
array.remove(at: 2) //удалили ранее вставленный -
array
var b = 0
var sum = 0
var money = [100, 1, 5, 20, 1, 2, 50, 20]
for i in money {
    print (i, b)
    b+=1
    sum+=i
    print (sum)
}

for (index, value) in money.enumerated(){
    print (index, value)
}//энумерейт возвращает тьюпл Индекс-Значение

//массив 12 месяц - количество дней в месяце (12 элементов по количеству дней) вывести дни+
//еще один массив - имена месяцев В цикле вывести месяц + дни+
//сделать третий массив тюплов (месяц:количество дней) - один массив+
//вывеси количество дней в месяце задом наперед+

//массив опциональных интеджеров 5 штук нилы/инты в цикле посчитать сумму и вывести (ОпшБанд ФорсАнр ??)+

//массив алфавит перенести по символу в массив карактер

let monthDays = [31,28,31,30,31,30,31,31,30,31,30,31]
let monthNames = ["January", "Febrary", "March", "April", "May", "June", "Jyly", "August", "September", "October", "November", "December"]
monthNames.count

for i in 0...monthDays.count-1 {
    print ("\(monthNames[i]) is \(monthDays[i]) days")
}

for i in (0...monthDays.count-1).reversed() {
    print ("\(monthNames[i]) is \(monthDays[i]) days")
}

for i in 0...monthDays.count-1 {
    var tupl = (monthNames[i],monthDays[i])
    print(tupl)
}
var summ:Int = 0
var intArray = [1,3,5,nil,1,3,9]
for i in intArray {
    var z = 0
        if i != nil {
            z = i!
        } else {
            z = 0
        }
    summ=summ+z
    print(summ)
}


var array1 = [(String, Int)] ()
for i in 0..<monthDays.count {
    var month = (month:monthNames[i], day:monthDays[i])
    array1.append(month)
}
print (array1)
array1[0]

//посчитать на основании массива количество дней до ДР
var dayOfBirth = (month: 9, day: 18)
var days=0
for i in 0..<dayOfBirth.month {
    days = days + monthDays[i]
}
days = days+dayOfBirth.day
print(days)
