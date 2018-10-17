//
//  ColorTool.swift
//  FirstIOSProjectREROLLED
//
//  Created by Fitzgerald, Skyler on 10/11/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import Foundation
import UIKit

public class ColorTool
{
    
    var redRandom : UInt32 = 0
    var greenRandom : UInt32 = 0
    var blueRandom : UInt32 = 0
    
    var redValue : Float {
        get {
            return Float(redRandom)
        }
    }
    
    var greenValue : Float {
        get {
            return Float(greenRandom)
        }
    }
    
    var blueValue : Float {
        get {
            return Float(blueRandom)
        }
    }

    private func newRandom() -> Void
    {
        self.redRandom = arc4random() % 256
        self.greenRandom = arc4random() % 256
        self.blueRandom = arc4random() % 256
    }
    
    public func createRandomColor() -> UIColor
    {
        newRandom()
        
        let redPercent : CGFloat = CGFloat (Double(redRandom) / 255.00)
        let greenPercent : CGFloat = CGFloat (Double(greenRandom) / 255.00)
        let bluePercent : CGFloat = CGFloat (Double(blueRandom) / 255.00)
        
        
        return UIColor(red: redPercent, green: greenPercent, blue: bluePercent, alpha: CGFloat(100))
    }
}
