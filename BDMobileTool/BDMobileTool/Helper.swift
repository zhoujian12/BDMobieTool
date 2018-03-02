//
//  Helper.swift
//  BDMobileTool
//
//  Created by Zhou,Jian(MABD) on 2018/3/2.
//  Copyright © 2018年 com.baidu. All rights reserved.
//

import UIKit

class Helper: NSObject {
    
    /* 单例 */
    // 全局变量
    private static let sharedHelper: NSObject = {
        let shared = Helper(string: "1")
        // 可以做一些其他的配置
        // ...
        return shared
    }()
    // Properties
    let string: String
    // Initialization
    private init(string: String) {
        self.string = string
    }
    // Accessors
    class func shared() -> Helper {
        return sharedHelper as! Helper
    }
    
     /* 数组删除某类相同元素 [0,1,2,1] 中删除第二个和第四个1 */
    //获取正确的删除索引
    public func getRemoveIndex<T: Equatable>(value: T, array: [T]) -> [Int]{
        var indexArray = [Int]()
        var correctArray = [Int]()
        
        //获取指定值在数组中的索引
        for (index,_) in array.enumerated() {
            if array[index] == value {
                indexArray.append(index)
            }
        }
        
        //计算正确的删除索引
        for (index, originIndex) in indexArray.enumerated(){
            //指定值索引减去索引数组的索引
            let correctIndex = originIndex - index
            //添加到正确的索引数组中
            correctArray.append(correctIndex)
        }
        return correctArray
    }
    
    //从数组中删除指定元素
    func removeValueFromArray<T: Equatable>(value: T, array: inout [T]){
        let correctArray = getRemoveIndex(value: value, array: array)
        //从原数组中删除指定元素
        for index in correctArray{
            array.remove(at: index)
        }
    }

}
