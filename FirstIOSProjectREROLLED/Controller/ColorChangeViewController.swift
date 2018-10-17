//
//  ViewController.swift
//  FirstIOSProjectREROLLED
//
//  Created by Fitzgerald, Skyler on 10/11/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public class ColorChangeViewController: UIViewController {

    private lazy var myColor: ColorTool = ColorTool()
    
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var buttonAgain: UIButton!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func slideValueChange(_ sender: UISlider)
    {
        updateColor()
    }
    
    
    @IBAction func changeColorAgain(_ sender: UIButton) -> Void
    {
        colorLabel.textColor = myColor.createRandomColor()
        self.view.backgroundColor = myColor.createRandomColor()
        redSlider.value = myColor.redValue
        greenSlider.value = myColor.greenValue
        blueSlider.value = myColor.blueValue
        
        
        
        let modoCount = arc4random() % 11
        if  (modoCount >= 8 && modoCount < 10)
        {
            colorLabel.text = "Fantastic!"
        }
        else if (modoCount >= 6 && modoCount < 8)
        {
            colorLabel.text = "Epic!"
        }
        else if (modoCount >=  4 && modoCount < 6)
        {
            colorLabel.text = "Wow!"
        }
        else if (modoCount >= 2 && modoCount < 4)
        {
            colorLabel.text = "Cool!"
        }
        else if (modoCount >= 0 && modoCount < 2 )
        {
            colorLabel.text = "Amazing!"
        }
    }
    
    private func updateColor() -> Void
    {
        self.view.backgroundColor = UIColor(red: CGFloat(redSlider.value / 255.00), green: CGFloat(greenSlider.value / 255.00), blue: CGFloat(blueSlider.value / 255.00), alpha: CGFloat(100))
    }
    
}

