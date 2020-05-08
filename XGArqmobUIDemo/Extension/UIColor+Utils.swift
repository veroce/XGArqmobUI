//
//  UIColor+Utils.swift
//  demoAr
//
//  Created by Vero on 02/04/2020.
//  Copyright © 2020 Vero. All rights reserved.
//

import UIKit
extension UIColor {
    func toHexString() -> String {
        var r:CGFloat = 0
        var g:CGFloat = 0
        var b:CGFloat = 0
        var a:CGFloat = 0

        getRed(&r, green: &g, blue: &b, alpha: &a)

        let rgb:Int = (Int)(r*255)<<16 | (Int)(g*255)<<8 | (Int)(b*255)<<0

        return String(format:"#%06x", rgb)
    }
    
    var rgbComponents:(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
           var r:CGFloat = 0
           var g:CGFloat = 0
           var b:CGFloat = 0
           var a:CGFloat = 0
           if getRed(&r, green: &g, blue: &b, alpha: &a) {
               return (r,g,b,a)
           }
           return (0,0,0,0)
       }
       // hue, saturation, brightness and alpha components from UIColor**
       var hsbComponents:(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat) {
           var hue:CGFloat = 0
           var saturation:CGFloat = 0
           var brightness:CGFloat = 0
           var alpha:CGFloat = 0
           if getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha){
               return (hue,saturation,brightness,alpha)
           }
           return (0,0,0,0)
       }
    //Convert UIColor to RGBA String
    func toRGBAString()-> String {

        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        self.getRed(&r, green: &g, blue: &b, alpha: &a)
        return String(format: "%.0f %.0f %.0f", (r * 255), (g * 255), (b * 255))

    }

}
