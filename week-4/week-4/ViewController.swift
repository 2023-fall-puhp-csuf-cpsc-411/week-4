//
//  ViewController.swift
//  week-4
//
//  Created by Mark D. Raden on 9/12/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var textEdit: UITextField!
    @IBOutlet var slider: UISlider!
    @IBOutlet var mySwitch: UISwitch!
    @IBOutlet var progress: UIProgressView!
    
    var switchIsOn: Bool = true
    
    var textIndex: Int = 0
    var textMemory = [
        "", ""
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.progress.progress = self.slider.value
    }
    
    func rememberSwitchPosition() {
        self.switchIsOn = self.mySwitch.isOn
    }
    
    func handleSegmentedControlChange() {
        self.textMemory[self.textIndex] = self.textEdit.text ?? "[None]"
        self.textIndex = self.segmentedControl.selectedSegmentIndex
        self.textEdit.text = self.textMemory[self.textIndex]
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        print("Button tapped")
    }
    
    @IBAction func draggedButton(_ sender: UIButton) {
        print("Dragged a button")
    }
    
    @IBAction func segmentedControlChanged(_ sender: UISegmentedControl) {
        self.handleSegmentedControlChange()
        print("The segmented control was changed to index: \(sender.selectedSegmentIndex)")
    }
    
    @IBAction func textEditChanged(_ sender: UITextField) {
        let text = sender.text!
        print("The text field was changed to: \(text)")
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        if ( self.switchIsOn ) {
            self.progress.progress = sender.value
        }
        
        print("the slider has changed to: \(sender.value)")
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        self.rememberSwitchPosition()
        print("the switch is now: \(sender.isOn)")
    }
    

    


}

