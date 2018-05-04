//
//  checkbox.swift
//  LifeARtistTest
//
//  Created by Mohamed ELfishawy on 4/7/18.
//  Copyright © 2018 Mohamed ELfishawy. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON







class loginVC1: UIViewController {
    
    var usertextfield: UITextField?

    @IBOutlet weak var numbertf: UITextField!
    @IBOutlet weak var passwordtf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    @IBAction func loginpressed(_ sender: UIButton) {
        guard let  Number = numbertf.text,!Number .isEmpty else {return}
        guard let password = passwordtf.text,!password .isEmpty else {return}
        APIService.login(Number: Number
        , password: password ) { (error:Error?, success: Bool) in
            if success{
                print("ok")
            }else{
                print("error")
            
            
            }
        }
    }


    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func checkbox(_ sender: UIButton) {
        if sender.isSelected{
            sender.isSelected = false
        }else{
            sender.isSelected = true
        }
    }
    
    @IBAction func idonthaveemail(_ sender: Any) {
        let alertcontroller = UIAlertController(title: "Enter your email",
                                                message: nil,
                                                preferredStyle: .alert)
        alertcontroller.addTextField(configurationHandler: usertextfield)
        let Okaction = UIAlertAction(title: "ok", style: .default, handler: self.okhandler)
        let cancelAvtion = UIAlertAction(title:"cancel", style: .cancel, handler: nil)
        alertcontroller.addAction(Okaction)
        alertcontroller.addAction(cancelAvtion)
        self.present(alertcontroller, animated: true)
    }
    
    func usertextfield(textfield:UITextField){
        usertextfield = textfield
        usertextfield?.placeholder = "emxamble@icloud.com"
    }
    
    
    func okhandler(alert: UIAlertAction){
        
        
    }
        
        
        
        
        
    }
    

