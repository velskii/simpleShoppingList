//
// Author:          FeiliangZhou
// StudentId:       301216989
// FileName:        ViewController.swift
// AppName:         SimpleShoppingList
// Date:            2021-10-30.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // make the 2-5 fields invisible after loading the view.
        itemField2.isHidden = true
        numberField2.isHidden = true
        stepper2.isHidden = true
        
        itemField3.isHidden = true
        numberField3.isHidden = true
        stepper3.isHidden = true
        
        itemField4.isHidden = true
        numberField4.isHidden = true
        stepper4.isHidden = true
        
        itemField5.isHidden = true
        numberField5.isHidden = true
        stepper5.isHidden = true
    
    }
    /**
        Trying to keep simple and easy to understand the functions is my principle of designing GUI
     */
    
    // Add new list name field
    @IBOutlet weak var listNameField: UITextField!
  
    // Add new item name field
    @IBOutlet weak var itemField1: UITextField!
    @IBOutlet weak var itemField2: UITextField!
    @IBOutlet weak var itemField3: UITextField!
    @IBOutlet weak var itemField4: UITextField!
    @IBOutlet weak var itemField5: UITextField!
    // quantity of items
    @IBOutlet weak var numberField1: UILabel!
    @IBOutlet weak var numberField2: UILabel!
    @IBOutlet weak var numberField3: UILabel!
    @IBOutlet weak var numberField4: UILabel!
    @IBOutlet weak var numberField5: UILabel!
    
    //steppers
    @IBOutlet weak var stepper1: UIStepper!
    @IBOutlet weak var stepper2: UIStepper!
    @IBOutlet weak var stepper3: UIStepper!
    @IBOutlet weak var stepper4: UIStepper!
    @IBOutlet weak var stepper5: UIStepper!
    
    //plus button will add a new line for the item
    var times = 1
    @IBAction func plusButton(_ sender: UIButton) {
        times = times + 1
    
        if (times == 2) {
            itemField2.isHidden = false
            numberField2.isHidden = false
            stepper2.isHidden = false
        }
        if (times == 3) {
            itemField3.isHidden = false
            numberField3.isHidden = false
            stepper3.isHidden = false
        }
        if (times == 4) {
            itemField4.isHidden = false
            numberField4.isHidden = false
            stepper4.isHidden = false
        }
        if (times == 5) {
            itemField5.isHidden = false
            numberField5.isHidden = false
            stepper5.isHidden = false
        }
        if (times > 5) {
        
            let controller2 = UIAlertController(
                title:"no more items",
                message: "5 items is the maximum.", preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "OK !", style: .cancel, handler: nil)
            controller2.addAction(cancelAction)
            self.present(controller2, animated: true,completion: nil)
        }
    }
    @IBAction func saveButtongClicked(_ sender: UIButton) {
        let controller2 = UIAlertController(
            title:"Data Saved",
            message: "well done!", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "OK !", style: .cancel, handler: nil)
        controller2.addAction(cancelAction)
        self.present(controller2, animated: true,completion: nil)
    }
    //reset everything after the cancel button is clicked
    @IBAction func cancelButton(_ sender: UIButton) {
        listNameField.text = ""
        itemField1.text = ""
        numberField1.text = "1"
        stepper1.value = 1
        
        itemField2.text = ""
        numberField2.text = "1"
        stepper3.value = 1
        
        itemField4.text = ""
        numberField4.text = "1"
        stepper4.value = 1
        
        itemField5.text = ""
        numberField5.text = "1"
        stepper5.value = 1
       
        itemField2.isHidden = true
        numberField2.isHidden = true
        stepper2.isHidden = true
        
        itemField3.isHidden = true
        numberField3.isHidden = true
        stepper3.isHidden = true
        
        itemField4.isHidden = true
        numberField4.isHidden = true
        stepper4.isHidden = true
        
        itemField5.isHidden = true
        numberField5.isHidden = true
        stepper5.isHidden = true
    }
    //stepper functions
    @IBAction func onStepperChanged1(_ sender: UIStepper) {
        numberField1.text="\(lroundf(Float(sender.value)))"
    }
    @IBAction func onStepperChanged2(_ sender: UIStepper) {
        numberField2.text="\(lroundf(Float(sender.value)))"
    }
    @IBAction func onStepperChanged3(_ sender: UIStepper) {
        numberField3.text="\(lroundf(Float(sender.value)))"
    }
    @IBAction func onStepperChanged4(_ sender: UIStepper) {
        numberField4.text="\(lroundf(Float(sender.value)))"
    }
    @IBAction func onStepperChanged5(_ sender: UIStepper) {
        numberField5.text="\(lroundf(Float(sender.value)))"
    }
 
    //close the keyboard after touching the background
    @IBAction func textFieldDoneEditing (sender: UITextField) {
        sender.resignFirstResponder()
    }
    @IBAction func onTapGestureRecognized(_ sender: Any) {
        listNameField.resignFirstResponder()
    }
}

