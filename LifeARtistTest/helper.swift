//
//  helper.swift
//  LifeARtistTest
//
//  Created by Mohamed ELfishawy on 5/3/18.
//  Copyright © 2018 Mohamed ELfishawy. All rights reserved.
//

import UIKit

class helper: NSObject {
    
//    class func Restartapp() {
//        guard let window = UIApplication.shared.keyWindow else {return}
//        let sb = UIStoryboard(name: "Main", bundle: nil)
//        var vc = UIViewController
//        if getApiToken() == nil {
//            //
//            vc = sb.instantiateInitialViewController()!
//
//        }else{
//            //
//            vc = sb.instantiateViewController(withIdentifier: "main")
//        }
//        window.rootViewController = vc
//        UIView.transition(with: window, duration: 0.5, options: .transitionFlipFromTop, animations: nil, completion: nil)
//
    
    class func saveApitoken(token:String){
        let def = UserDefaults.standard
        def.setValue(token, forKey: "api_token")
        def.synchronize()
        
    }
    class func getApiToken() -> String? {
        let def = UserDefaults.standard
        return def.object(forKey: "api_token")as? String
        
        
    }
    
    
    

}
