//
//  ViewController.swift
//  MPathY
//
//  Created by shannon on 7/9/17.
//  Copyright © 2017 Bradsky, Payton. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet var _PreferredName: UITextField!
    @IBOutlet var _Gender: UITextField!
    @IBOutlet var _City: UITextField!
    @IBOutlet var _State: UITextField!
    @IBOutlet var _PremiumCode: UITextField!
    
    @IBAction func LoginButton(_ sender: Any) {
        
        // just in case we will be using the name and location information
        let PreferredName = _PreferredName.text
        let Gender = _Gender.text
        let City = _City.text
        let State = _State.text
        let PremiumCode = _PremiumCode.text
        
        if (PreferredName == "" || Gender == "" || City == "" || State == "" || PremiumCode == "") {
            // TODO:
            // prompt warning
            //print("here")
            return
        }
        if (PremiumCode != "h4h2017") {
            Send2Timeout()
            return
        }
        //print("here2")
        DoLogin(PreferredName!, GDR: Gender!, City: City!, ST: State!, PCode: PremiumCode!);
        return
    }
    
    @IBAction func Send2TimeOutButton(_ sender: Any) {
        Send2Timeout()
    }
    
    func DoLogin(_ PName: String, GDR: String, City: String, ST: String, PCode: String) {
        
        self.performSegue(withIdentifier: "ToHelpCenterSegue", sender: self)
    }
    
    func Send2Timeout() {
        self.performSegue(withIdentifier: "ToTimeoutSegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
