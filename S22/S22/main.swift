//ARC
//автоматический подсчет ссылок
//важный функционал от apple необходимый к изучению
//Необходим для избежания утечек памяти

//ARC занимается объектами класса

var playground = true

class Student {
    var teacher:Teacher?
    deinit {
        print("DEINIT Student")
    }
}

class Teacher {
    var student:Student?
    deinit {
        print("DEINIT Teacher")
    }
}

if playground {
    var teacher = Teacher()
    
    if playground {
        var student = Student()
        teacher.student = student
    }
    
    print("EXIT PLAYGROUND")
}
print ("КОНЕЦ ПРОГРАММЫ")

//объект живет до тех пор пока есть хотя бы одна сильная ссылка

