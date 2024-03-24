//
//  ViewController.swift
//  changeColor
//
//  Created by yoway Li on 2024/3/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var monkeyImage: UIImageView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var opacitySlider: UISlider!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var opacitySwitch: UISwitch!
    @IBOutlet weak var resetButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sliderControl(_ sender: UISwitch) {
        redSlider.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
        opacitySlider.isEnabled = opacitySwitch.isOn
    }
    
    @IBAction func changeBackground(_ sender: UISlider) {
        monkeyImage.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(opacitySlider.value))
    }
    
    @IBAction func reset(_ sender: UIButton) {
        redSlider.value = redSlider.minimumValue
        greenSlider.value = greenSlider.minimumValue
        blueSlider.value = blueSlider.minimumValue
        opacitySlider.value = opacitySlider.minimumValue
    }
}

