//
//  ImageFromEmoji.swift
//  
//
//  Created by Ivan Grachev on 29/12/14.
//
//

import UIKit

func createImageFromEmoji(emoji:String, forFontSize fontSize:CGFloat) -> UIImage {
    let attributedString = NSAttributedString(string:emoji, attributes:[NSFontAttributeName:UIFont(name:"Apple Color Emoji", size:fontSize)!])
    let rect = attributedString.boundingRectWithSize(CGSizeMake(0,0), options:.UsesDeviceMetrics, context:nil)
    
    UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
    let context = UIGraphicsGetCurrentContext()
    attributedString.drawAtPoint(rect.origin)
    let resultImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    
    return resultImage
}