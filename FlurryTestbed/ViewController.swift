//
//  ViewController.swift
//  FlurryTestbed
//
//   This file implements the start screen. It is possible to view the configuration and start the study.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myConfig: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showConfig(_ sender: Any) {
        var sb = """
        Execute on appearance: \(MyVariables.onLoad)\n
        Send additional data: \(MyVariables.sendAdditionalData)\n
        Give consent:  \(MyVariables.userConsent)\n
        """
        
        self.myConfig.text = sb;
    }
    
    @IBAction func onload(_ sender: Any) {
        MyVariables.onLoad = true;
    }
    
    @IBAction func consent(_ sender: Any) {
        MyVariables.userConsent = true;
    }
    
    @IBAction func additional(_ sender: Any) {
        MyVariables.sendAdditionalData = true;
    }
    
}
