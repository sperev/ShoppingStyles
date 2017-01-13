//
//  Colors.swift
//  ShoppingStyles
//
//  Created by Sergei Perevoznikov on 08/01/2017.
//  Copyright © 2017 Sergei Perevoznikov. All rights reserved.
//

public class Colors {
    
    public class func rgb(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat = 1) -> UIColor {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        return UIColor(red: red/255.0, green: green/255, blue: blue/255, alpha: alpha)
    }
    
    public class func hex(_ hex: Int) -> UIColor {
        let red = (hex >> 16) & 0xff
        let green = (hex >> 8) & 0xff
        let blue = hex & 0xff
        return rgb(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue))
    }

}
