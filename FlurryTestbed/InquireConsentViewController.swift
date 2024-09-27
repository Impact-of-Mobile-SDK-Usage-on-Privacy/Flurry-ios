//
//  InquireConsentViewController.swift
//  FBAdsTestbed
//
//  This display is intended for setting and withdrawing consent. However, Flurry does not provide an option for this, which is why setting consent is not possible via app.
//

import UIKit

class InquireConsentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if (MyVariables.onLoad) {
            giveConsent(self);
        }
    }

    @IBAction func giveConsent(_ sender: Any) {
        let alertController = UIAlertController(title: "Give consent", message: "There is no consent flag in flurry", preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default) {
            (action: UIAlertAction!) in
            // Code in this block will trigger when OK button tapped.
            print("Ok button tapped");
        }
        alertController.addAction(OKAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
}
