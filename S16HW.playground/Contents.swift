
var array = [Int]()

func painter() {
    for i in 1...9 {
        array = []
        for j in 1...9 {
            array.append(j)
        }
        print (array)
    }
}
painter()

