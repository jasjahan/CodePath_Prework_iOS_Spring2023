//
//  ViewController.swift
//  PreworkiOS
//
//  Created by Jasmine Jahan on 1/13/23.
//

import UIKit

class IntroViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var schoolName: UITextField!
    @IBOutlet weak var yearSeg: UISegmentedControl!
    @IBOutlet weak var petNum: UILabel!
    @IBOutlet weak var morePets: UISwitch!
    
   
    @IBAction func stepper(_ sender: UIStepper) {
        petNum.text = "\(Int(sender.value))"
    }
    
    @IBAction func introSelf(_ sender: UIButton) {
        
        let year = yearSeg.titleForSegment(at: yearSeg.selectedSegmentIndex)
        
        let intro = "My name is \(firstName.text!) \(lastName.text!) and I attend \(schoolName.text!). I am currently in my \(year!) year and I own \(petNum.text!) dogs. It is \(morePets.isOn) that I want more pets."
        
        let alertController = UIAlertController(title: "About Me", message: intro, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Hey There!", style: .default, handler: nil)
        
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

