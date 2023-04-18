//Dictionary словари
//Элементы располагаются по ключам, ключ уникален
//обеспечивает очень быстрый доступ к элементам по ключам
var dict = ["машина" : "car", "мужик": "man"] //cоздали словать ключ:значение
dict["мужик"] //обратились по ключу
//dict : [String:String] = ["Str":"Str"] создали словарь с объявлением типов

var dict2 = [0:"car1", 1:"car2", 2:"car3"]
dict2[2] //обратились так-же по номеру элемента
dict2.count//возвращает количество пар ключ:значение
dict2.isEmpty

dict2[3] = "motocycle" //добавили элемент в словарь по ключу 3
dict2
dict2.keys
Array(dict2.keys)
Array(dict2.values)
//взяли массивы по ключам и по значениям (порядок рандомен)
dict2[1] = "Car2"
dict2.updateValue("CAR2", forKey: 1)//этим методом можно узнать что ключа ранее не было (вернет нил)
//два варианта замены по ключу

var varbl = dict2[1] //у переменной тип данных опционал

dict2[2] = nil//удалили элемент
dict2//элемента нет
//либо делаем через метод removeValueForKey("Key")
//dict2=[:] - полностью обнулили словарь

for key in dict2.keys {
    print("key = \(key), value = \(dict2[key])")
}
for (key, value) in dict2 {
    print ("key = \(key), value = \(value)")
}

//создать словарь журнал сутдентов ключ имя фамилия значение оценка на 5 студентов, вручную повысить паре штук оценку, добавить еще пару студентов, пару удалить, потом посчитать общий балл и средний балл

//словарь дней в месяцах месяц ключ дни значение, вывести на экран попарно тюплами, и вывести циклом через массив ключей и выводили пару

//словарь ключ адресс ячейки на шахатной доске, значение ключа тру если белая клетка, фалс если ячейка черная

var students = ["Ivanov Ivan": 5, "Petrov Petr": 2, "Sidorov Ignat": 3]
students["Sidorov Ignat"] = 4
students["Petrov Petr"] = 3
var summ:Int = 0
students["Semyon Semyonych"] = 1
students["Ibragim Korzhyn"] = 3
for (_, value) in students {
    summ = summ+value
}
print("Общий балл = \(summ)")
print("Средний балл = \(summ/students.count)")

var halfYear = ["Jan":31, "Feb":28, "March":31, "Apr":30, "May":31, "Jun":30]
for (month, days) in halfYear {
    var currentMonth = (month, days)
    print(currentMonth)
    print(month, halfYear[month]!, "from array key")
}

var chessDesk = [11:false]
var boolCheck:Bool
for i in 1...8 {
    for k in 1...8 {
        var z="\(i)\(k)"
        if (i+k)%2==0 {
            boolCheck = false
        } else {
            boolCheck = true
        }
        chessDesk[Int(z)!]=boolCheck
    }
}
print (chessDesk)
chessDesk[11]
