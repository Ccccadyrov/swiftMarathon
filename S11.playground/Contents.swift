//Клоужеры (Замыкания) closures
let numbers = [4, 3, 12, 7, 6, 3, 56, 11, 33, 2, 10, 11, 2, 3]
func filterArray(array:Array<Int>, j:(Int)->Bool) -> Array<Int> { //фнкция принимает массив и другую функцию
    var filtered=[Int]() //Это синтаксис задания пустого массива
    for i in array {
        if j(i) {//из функции ниже, если к/2=0 то тру и аппенд
            filtered.append(i)
        }//вызываем функцию из параметра, с параметром
    }
    return filtered
}
func compare(k:Int) -> Bool {
    return k % 2 == 0
}

filterArray(array: numbers, j: compare) //первым аргументом принимает массив, вторым функцию которая указана выше(ф-ция возвращает только четные элементы массива
filterArray(array: numbers, j: {(i:Int)->Bool in
    return i % 2 == 0
})//указали саму функцию внутри параметра
//MARK: simle form (марк добавляет закладку(метку))
filterArray(array: numbers, j: {i in
    return i % 2 == 0
}) //еще более укороченная запись инлайн клоужера
filterArray(array: numbers, j: {i in i%2==1}) //если всего одна команда - ретерн можно убрать (Этот клоужер дает нечетные)
filterArray(array: numbers, j: {$0 % 3 == 0}) //максимально сокращенная форма, $0 $1 нумерация аргументов (сама функция выводит кратные трем)
//наполнение фигурных скобок можно вывести за скобку
filterArray(array: numbers) {$0 % 3 == 0}//вот

let number2 = [1,2,3] //пройдемся по первому массиву и совпадающие оставим

var count = 0 //сделали счетчик операций

let print1 = filterArray(array: numbers) { value in
    for include in number2 {
        count+=1
        if include == value {return true}
    }
    return false
}
count

//сделаем это-же на дикшинари
var dict = [Int:Bool] ()
for value in number2 {
    dict[value] = true
}

let print2 = filterArray(array: numbers) { value in
    return dict[value] != nil
    }

// Домашнее задание
// 1) Написать функцию, которая принимает, один клоужер, добавить в тело функции цикл for от 1 до 10 и вывести эти цифры и вызвать клоужер
// 2) Создать массив Int, используя функцию sorted  отсортировать массив по возрастанию и убыванию
//3) Написать функцию, которая принимает массив Int и клоужер и возвращает Int. Клоужер должен принимать 2 Int (один опшинал) и возвращать да или нет. В самой функции создайте опшинал переменную. Вы должны пройтись в цикле по массиву интов и сравнивать элементы с переменной используя клоужер. Если клоужер возвращает да, то вы записываете значение массива в переменную. в конце функции возвращайте переменную. Используя этот метод и этот клоужер найдите максимальный и минимальный элементы массива.
// 4) Создайте произвольную строку. Преобразуйте ее в массив букв. Используя метод массивов sorted отсортируйте строку так, чтобы вначале шли гласные в алфавитном порядке, потом согласные, потом цифры, а потом символы
// 5)  Проделайте задание 3 но для нахождения минимальной и максимальной буквы из массива букв (соответственно скалярному значению)


func twoCycle (closure:()) {
    for i in 0...10 {
        print ("\(i) итерация основной функции")
        closure
    }
}

func insightCycle() {
    for j in 0...10 {
        print ("\(j) итерация клоужера")
    }
}

twoCycle(closure: insightCycle())

var arrayIntegers = [1,2,3,9,8,4,1,9,44,31,11]
var z = arrayIntegers.sorted(by: <)
print (z)
var homeString = "Test string to move in Array"
var arrayString:Array<String>=[]

func stringToArray (string:String) {
    for i in string {
        arrayString.append(String(i))
        print(arrayString)
    }
}

stringToArray(string: homeString)
arrayString.sort(by: <)

//
//var array = [1,2,3,4,5,6,7,8,9,11,22,33,44,55]
//var clearArray = [Int]()
//func globalSort (array:Array<Int>, function:(Int, Int?)->Bool) {
//    var z = 6
//    for i in array {
//        if function(i,z) {
//            clearArray.append(i)
//        }
//    }
//}
//
//func smallSort (a:Int, b:Int?)->Bool {
//    return a>b!
//}
//
//globalSort(array: array, function: smallSort)
//print (clearArray)
