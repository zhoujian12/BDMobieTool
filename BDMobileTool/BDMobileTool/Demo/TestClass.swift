//
//  TestClass.swift
//  BDMobileTool
//
//  Created by Zhou,Jian(MABD) on 2018/2/1.
//  Copyright © 2018年 com.baidu. All rights reserved.
//

import UIKit

class TestClass: NSObject {
    var  numberOfSides = 0
    public func simpleDescription(_ name:String) -> String {
        return "\(name) A shape with \(numberOfSides) sides."
    }
}

class NameShape {
    var n : Int = 0
    var name : String
    
    init(name : String) {
        self.name = name
    }
    
    func dec() -> String {
        return ".. \(n) sides"
    }
}

class s: NameShape {
    var side : Double
    
    init(side :Double ,name:String) {
        self.side = side
        super.init(name: name)
        n = 4
    }
    
    func area() -> Double {
        return side * side
    }
    
    override func dec() -> String {
        return ".. length  \(side) "
    }
}



