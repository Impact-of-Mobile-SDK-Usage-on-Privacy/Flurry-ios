//
//  InitialStateViewController.swift
//  FBAdsTestbed
//
//  This file realizes the initial state for the study. An instance of the Flurry SDK is created without configuring any further settings.
//

import UIKit
import Flurry_iOS_SDK

class InitialStateViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if (MyVariables.onLoad) {
            createObjk(self);
        }
    }
    @IBAction func createObjk(_ sender: Any) {
        let sb = FlurrySessionBuilder()
                  .build(logLevel: FlurryLogLevel.all)
                  .build(appVersion: "1.0")
                  .build(iapReportingEnabled: true)
        MyVariables.flurry = sb;
        let alertController = UIAlertController(title: "Create Object", message: "Create Object with FlurrySessionBuilder", preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default) {
            (action: UIAlertAction!) in
            // Code in this block will trigger when OK button tapped.
            print("Ok button tapped");
        }
        alertController.addAction(OKAction)
        self.present(alertController, animated: true, completion: nil)
    }
}
