import Foundation
protocol QuadrilateralSquare{
    var width : Int {get}
    var height: Int {get}
    func perimetr() -> Int
}
class Figure{
    
    var name: String
    var cornerRadius: Int
    init(name: String, cornerRadius: Int){
        self.name = name
        self.cornerRadius = cornerRadius
    }
}
class Round : Figure{
        var r: Int
    init(cornerRadius: Int, r: Int) {
        self.r=r
        super.init(name: "Round", cornerRadius: cornerRadius)
    }
            func roundSquare()-> Double{
                var roundSquare:Double
                roundSquare = Double(r*r)*Double.pi
                return roundSquare
        }
            }

class Triangle: Figure {
        var a: Int
        var b: Int
        var c: Int
    init(cornerRadius: Int, a: Int, b: Int, c: Int) {
        self.a=a
        self.b=b
        self.c=c
        super.init(name: "Triangle", cornerRadius:cornerRadius)
    }
            func triangleSquare() -> Double{
            
                var p = Double((a+b+c)/2)
                var triangleSquare = sqrt(p*(p-Double(a))*(p-Double(b))*(p-Double(c)))
                return triangleSquare
                }
}
class Rectangle:Figure,QuadrilateralSquare {
    var width: Int
    var height: Int
    init(cornerRadius: Int, width: Int, height: Int) {
        self.width=width
        self.height=height
        super.init(name: "Rectangle", cornerRadius: cornerRadius)
    }
     func perimetr() -> Int {
           var perimetr: Int
           perimetr = height+height+width+width
           return perimetr
       }
            func rectangleSquare ()-> Int{
            var rectangleSquare : Double
            rectangleSquare = Double(Int(width*height))
            return Int(rectangleSquare)
    }
    }
