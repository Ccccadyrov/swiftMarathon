enum WhiteChess {
    case king(color: String, posX: String, posY:Int)
    case rook(color: String, posX: String, posY:Int)
    case knight(color: String, posX: String, posY:Int)
    case bishop(color: String, posX: String, posY:Int)
    case queen(color: String, posX: String, posY:Int)
}
var whiteKing = WhiteChess.king(color: "white", posX: "E", posY: 1)
print (whiteKing)
switch whiteKing {
case .king(let color, let posX, let posY): print (color, posX, posY)
default: break
}

