//
//  esh3ratViewController.swift
//  LifeARtistTest
//
//  Created by Mohamed ELfishawy on 4/23/18.
//  Copyright © 2018 Mohamed ELfishawy. All rights reserved.
//

import UIKit
import Cosmos


class esh3ratViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
   
    @IBOutlet var cosmo: CosmosView!
    
    private let starrating:Float = 3.7
    
    let B = [(title:"يمكنك الان تقيم مقدم الخدمة",image:"8")]
    
    

    @IBOutlet var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableview.dataSource = self
        tableview.delegate = self
        

        
    }
    private func didTouchCosmos(_ rating: Double) {
       
    }
    private func didFinishTouchingCosmos(_ rating: Double) {
       
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return B.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customviewcell") as! customviewcell
        
        cell.label.text = B[indexPath.row].title
        
        
        
        let imgName = B[indexPath.row].image
        
        
        cell.imgimage.image = UIImage(named: imgName)
        
        
        return cell
        

    

}
}


