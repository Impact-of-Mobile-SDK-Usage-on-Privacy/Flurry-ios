//
//  PopOverController.swift
//  FlurryTestbed
//
//

import UIKit

class PopOverController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var sb = """
        Execute on appearance: \(MyVariables.onLoad)\n
        Send additional data: \(MyVariables.sendAdditionalData)\n
        Give consent:  \(MyVariables.userConsent)\n
        """
        
        textLabel.text = "test";
    }
}

