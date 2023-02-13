import UIKit

struct ChessPiece {
    
    let color: Color
    let type: PieceType
    
    enum Color: String{
        case white = "Blanco", black = "Negro"
    }
    
    enum PieceType: String {
        case King = "Rey", Queen = "Reina", Rock = "Torre", Bishop = "Alfil", Knight = "Caballo", pawn = "Peon"
        struct Number {
            let number: Int
        }
        var number: Number {
            switch self {
            case .King:
                return Number(number: 1)
            case .Queen:
                return Number(number: 1)
            case .Rock:
                return Number(number: 2)
            case .Bishop:
                return Number(number: 2)
            case .Knight:
                return Number(number: 2)
            case .pawn:
                return Number(number: 8)
            }
        }
    }
    var desccription: String {
        return "La pieza es de color \(color.rawValue) y de tipo \(type.rawValue) ,esta tiene \(type.number.number)"
    }
}

let myPiece = ChessPiece(color: .black, type: .Rock)
print(myPiece.desccription)
