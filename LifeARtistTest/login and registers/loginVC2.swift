//
//  checkbox2.swift
//  LifeARtistTest
//
//  Created by Mohamed ELfishawy on 4/11/18.
//  Copyright © 2018 Mohamed ELfishawy. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class loginVC2: UIViewController {
    
    var usertextfield: UITextField?
    @IBOutlet weak var usernameTf: UITextField!
    
    @IBOutlet weak var passwordTf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginpressed2(_ sender: UIButton) {
        guard let  username = usernameTf.text,!username .isEmpty else {return}
        guard let password = passwordTf.text,!password .isEmpty else {return}
        Apiservice2.login2(username: username, password: password) { (error:Error?, succes:Bool) in
            if succes{
                print("ok")
            }else{
                print("error")
            }
        }
        
    }
    
   

    
        


    @IBAction func checkbox2(_ sender: UIButton) {
        if sender.isSelected{
            sender.isSelected = false
        }else{
            sender.isSelected = true
        }
}

    @IBAction func idonthaveemial2(_ sender: Any) {
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
    


