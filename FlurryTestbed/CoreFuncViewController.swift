//
//  CoreFuncViewController.swift
//  FBAdsTestbed
//
//  This display uses the core functionality of Flurry. In this case, logging/sending events.
//

import UIKit
import Flurry_iOS_SDK

class CoreFuncViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Core func");
        if (MyVariables.onLoad) {
            buttonClick(self);
        }
    }
    @IBAction func buttonClick(_ sender: Any) {
        // Capture the author info & user status
        let articleParams = ["Author": "John Q", "User_Status": "Registered"];

        Flurry.log(eventName: "Article_Read", parameters: articleParams)
        
        let alertController = UIAlertController(title: "Core Func", message: "Sending custom event with author and article", preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default) {
            (action: UIAlertAction!) in
            // Code in this block will trigger when OK button tapped.
            print("Ok button tapped");
        }
        alertController.addAction(OKAction)
        self.present(alertController, animated: true, completion: nil)
    }
}
