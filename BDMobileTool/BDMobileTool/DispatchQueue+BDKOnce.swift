//
//  DispatchQueue+BDKOnce.swift
//  baiduskill
//
//  Created by Wang,Siyuan(MABD) on 2018/1/25.
//  Copyright © 2018年 MABD. All rights reserved.
//

import Foundation

public extension DispatchQueue {
    
    private static var _onceTracker = [String]()
    
    public class func once(token: String, block:()->Void) {
        objc_sync_enter(self)
        defer { objc_sync_exit(self) }
        
        if _onceTracker.contains(token) {
            return
        }
        
        _onceTracker.append(token)
        block()
    }
}
