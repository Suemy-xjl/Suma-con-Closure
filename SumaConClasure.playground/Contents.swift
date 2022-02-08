import UIKit
import Foundation

typealias OperationBlock = (Int, Int) -> Int

//Given

    let sumaBlock: OperationBlock = { value1, value2 in
        return value1 + value2
    }

    let restaBlock: OperationBlock = { value1, value2 in
        return value1 - value2
    }

    let multBlock: OperationBlock = { value1, value2 in
        return value1 * value2
    }

    let divBlock: OperationBlock = { value1, value2 in
        return value1 / value2
    }

//When
    func operaciones(sumaBlock: OperationBlock, s: Int, y: Int) {
        let suma = sumaBlock(s,y)
        let resta = restaBlock(s,y)
        let mult = multBlock(s,y)
        let div = divBlock(s,y)
        
        print("La suma de los valores es: \(suma)")
        print("La resta de los valores es: \(resta)")
        print("La multiplicación de los valores es: \(mult)")
        print("La división de los valores es: \(div)")
    }

    /*
     func suma(s: Int, y: Int) -> Int {
     return s + y
     }
     */
    operaciones(sumaBlock: sumaBlock, s: 10, y: 5)

//Then
    /*
        La suma de los valores es: 15
        La resta de los valores es: 5
        La multiplicaciòn de los valores es: 50
        La división de los valores es: 2
    */
