//
//  ViewController.swift
//  BDMobileTool
//
//  Created by Zhou,Jian(MABD) on 2018/1/18.
//  Copyright © 2018年 Zhou,Jian(MABD). All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let a1 : Int = 1
        var b: Int = 2
        print(a1)
        print(b)
        b += 2
        print(b)
        
        let cl = TestClass()
        cl.numberOfSides = 1
        let des = cl.simpleDescription("jianz")
        print(des)
        
        
        let test  = s.init(side: 5.2, name: "test square")
        let a =  test.area()
        let b1 = test.dec()
        print("a: \(a)  a1:\(b1)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

