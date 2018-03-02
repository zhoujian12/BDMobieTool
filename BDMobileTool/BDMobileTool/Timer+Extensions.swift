//
//  Timer+Extensions.swift
//  WatchDemo
//
//  Created by Zhou,Jian(MABD) on 2018/3/2.
//  Copyright © 2018年 nimo. All rights reserved.
//

import Foundation

extension Timer{
    /*  防止Timer的循环引用问题 */
    class func zj_initTimer (timeInterval: TimeInterval, repeats: Bool, completion:((_ timer:Timer)->())) -> Timer{
        return Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(zj_completionLoop(timer:)),
                                    userInfo: completion, repeats: repeats);
    }
    
    @objc class func zj_completionLoop(timer:Timer) {
        guard let completion = timer.userInfo as? ((Timer) -> ()) else {
            return;
        }
        completion(timer);
        
    }
}
