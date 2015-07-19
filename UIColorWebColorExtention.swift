//
//  UIColorWebColorExtention.swift
//  Wholesaleroid
//
//  Created by 能登 要 on 2015/07/19.
//  Copyright (c) 2015年 Irimasu Densan Planning. All rights reserved.
//

import UIKit

extension UIColor {
    public convenience init( webcolor:String ) {
        let paletteColor : Dictionary = [ "0":0
                            ,"1":1
                            ,"2":2
                            ,"3":3
                            ,"4":4
                            ,"5":5
                            ,"6":6
                            ,"7":7
                            ,"8":8
                            ,"9":9
                            ,"A":10
                            ,"B":11
                            ,"C":12
                            ,"D":13
                            ,"E":14
                            ,"F":15
                            ]
        
        var red:   CGFloat = 0.0
        var green: CGFloat = 0.0
        var blue:  CGFloat = 0.0
        var alpha: CGFloat = 1.0
        
        if webcolor.hasPrefix("#") {
            if count(webcolor) == 7 {
                red = CGFloat(paletteColor[(webcolor as NSString).substringWithRange(NSRange(location: 1, length: 1))]! * paletteColor[(webcolor as NSString).substringWithRange(NSRange(location: 2, length: 1))]!)
                
                green = CGFloat(paletteColor[(webcolor as NSString).substringWithRange(NSRange(location: 3, length: 1))]! * paletteColor[(webcolor as NSString).substringWithRange(NSRange(location: 4, length: 1))]!)
                

                blue = CGFloat(paletteColor[(webcolor as NSString).substringWithRange(NSRange(location: 5, length: 1))]! * paletteColor[(webcolor as NSString).substringWithRange(NSRange(location: 6, length: 1))]!)
            }else if count(webcolor) == 4 {
                    red = CGFloat(paletteColor[(webcolor as NSString).substringWithRange(NSRange(location: 1, length: 1))]! )
                    
                    green = CGFloat(paletteColor[(webcolor as NSString).substringWithRange(NSRange(location: 2, length: 1))]! )
                    
                    
                    blue = CGFloat(paletteColor[(webcolor as NSString).substringWithRange(NSRange(location: 3, length: 1))]!)
            }
        }
        
        self.init(red:red, green:green, blue:blue, alpha:alpha)
    }
    
}
