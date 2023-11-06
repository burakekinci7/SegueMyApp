//
//  SecondsViewController.swift
//  SegueMyApp
//
//  Created by Ramazan Burak Ekinci on 6.11.2023.
//

import UIKit

class SecondsViewController: UIViewController {

    @IBOutlet weak var labelSeconds: UILabel!
    
    @IBOutlet weak var incomingDataLabel: UILabel!
    
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        incomingDataLabel.text = myName

        // Do any additional setup after loading the view.
    }
    


}
