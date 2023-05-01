class Player {
    var x: Int
    var y: Int
    var image = "😎"
    init (x:Int, y:Int) {
        self.x = x
        self.y = y
    }
    func moveRight () {
        self.y+=1
    }
    func moveDown () {
        self.x+=1
    }
}

var player = Player(x: 1, y: 2)
var z = player.image
player.x
player.y
var clearSpace = "⬜️"


var array = [String]()
func painter() {
    for i in 1...9 {
        array = []
        for j in 1...9 {
            if (i==player.x && j==player.y) {
                array.append(z)
            } else {
                array.append(clearSpace)
            }
            
        }
        print (array)
    }
    print("ОТБИВКА")
}
painter()
player.moveRight()
painter()
player.moveRight()
painter()
player.moveDown()
painter()
