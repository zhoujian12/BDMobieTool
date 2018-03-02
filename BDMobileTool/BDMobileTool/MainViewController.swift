//
//  MainViewController.swift
//  BDMobileTool
//
//  Created by Zhou,Jian(MABD) on 2018/3/1.
//  Copyright © 2018年 com.baidu. All rights reserved.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    let label = UILabel()
    var familyNames = [String]()
    
    @IBOutlet weak var fontNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "main"
        // Do any additional setup after loading the view.
        label.text = "I am the king of the world"
        label.textAlignment = NSTextAlignment.center
        self.view.addSubview(label)
        label.snp.makeConstraints { (make) in
            make.top.equalTo(64)
            make.centerX.equalTo(self.view)
            make.height.equalTo(30)
        }
        label.font = UIFont.systemFont(ofSize: 30)
        
        let changeBtn = UIButton.init(type: UIButtonType.custom)
        changeBtn.setTitle("Change Font Family", for: UIControlState.normal)
        changeBtn.addTarget(self, action: #selector(changeFontFamiy), for: UIControlEvents.touchUpInside)
        changeBtn.setTitleColor(UIColor.red, for: UIControlState.normal)
        self.view.addSubview(changeBtn)
        changeBtn.layer.borderColor = UIColor.blue.cgColor
        changeBtn.layer.borderWidth = 3
        changeBtn.layer.cornerRadius = 5
        changeBtn.snp.makeConstraints { (make) in
            make.top.equalTo(fontNameLabel.snp.bottom).offset(10)
            make.centerX.equalTo(self.view)
            make.width.equalTo(200)
            make.height.equalTo(20)
        }
        
        // MARK:  数组删除指定的数据
        var arr = [1,2,3,1]
        Helper.shared().removeValueFromArray(value: 1, array: &arr)
        print(arr)
        
        fontNameLabel.text? = "fonName : \(label.font.fontName)"
        
//        for familyName in UIFont.familyNames {
//            print("+ \(familyName)")
//            let fontNames = UIFont.fontNames(forFamilyName: familyName)
//            for  fontName in fontNames{
//                print("- \(fontName)")
//            }
//        }
    }
    
    @objc func changeFontFamiy() {
        print(label.font.fontName)
//        removeValueFromArray(value: label.font.fontName, array: &(self.familyNames))
        Helper.shared().removeValueFromArray(value: label.font.fontName, array: &(self.familyNames))
        if familyNames.count == 0 {
            fetchAndPrintSupportedFontNames()
        }
        let randomNum = Int(arc4random() % UInt32(self.familyNames.count))
        let randomFont = familyNames[randomNum]
        label.font = UIFont.init(name:randomFont, size: 18);
        fontNameLabel.text? = "fonName : \(randomFont)"
    }
    
    func fetchAndPrintSupportedFontNames()  {
            let familyNamesArr = UIFont.familyNames
    
            for familyName in familyNamesArr {
                let fontNames = UIFont.fontNames(forFamilyName: familyName)
                for  fontName in fontNames{
                    familyNames.append(fontName)
                }
            }

        }

}


