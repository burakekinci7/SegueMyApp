//
//  ViewController.swift
//  SegueMyApp
//
//  Created by Ramazan Burak Ekinci on 6.11.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var editText: UITextField!

    @IBOutlet weak var labelFirst: UILabel!
    
    var userNam : String = ""
    
    //lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        //ony once called. and when application start
        //for initstate
        print("viewDid Load function called")
    }
    //Disappear -> kaybolacak
    //Appear -> gorunmek
    override func viewDidAppear(_ animated: Bool) {
        print("view did Appear functoin called")
        print("ViewController appear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("view did Disappear functoin called")
        print("ViewController closed (Disappear)")
    }
    override func viewWillAppear(_ animated: Bool) {
        print("view will Appear functoin called")
        print("ViewController will Appear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("view will Dsappear functoin called")
        print("ViewController will closed (Disappear)")
    }

    @IBAction func nextSegue(_ sender: Any) {
        userNam = editText.text!
        performSegue(withIdentifier: "1stVc", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //bu method seuge gerceklesmeden once calisir
        //This method runs before the seuge occurs
        
        if segue.identifier == "1stVc"{
            let destinationsVc = segue.destination as! SecondsViewController
            destinationsVc.myName = userNam
        }
    }
        
    
}

