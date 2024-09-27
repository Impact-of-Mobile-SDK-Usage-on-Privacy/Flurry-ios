//
//  InitializeViewController.swift
//  FBAdsTestbed
//
//  This display enables the Flurry SDK to be initialized.
//

import UIKit
import Flurry_iOS_SDK

class InitializeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Initialize");
        if (MyVariables.onLoad) {
            buttonClick(self);
        }
    }
    
    func initSDK() {
        print(MyVariables.flurry);
        if (MyVariables.flurry != nil) {
            Flurry.startSession(apiKey: "G8XJWFHTJQQR3D64RRTY", sessionBuilder: MyVariables.flurry)
        } else {
           print("Problem")
        }
    }
    
    @IBAction func buttonClick(_ sender: Any) {
        initSDK();
        
        let alertController = UIAlertController(title: "Initialize SDK", message: "Init Flurry", preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default) {
            (action: UIAlertAction!) in
            // Code in this block will trigger when OK button tapped.
            print("Ok button tapped");
        }
        alertController.addAction(OKAction)
        self.present(alertController, animated: true, completion: nil)
    }
}
