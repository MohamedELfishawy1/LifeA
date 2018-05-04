//
//  makeserviceViewController.swift
//  LifeARtistTest
//
//  Created by Mohamed ELfishawy on 5/3/18.
//  Copyright © 2018 Mohamed ELfishawy. All rights reserved.
//

import UIKit

class makeserviceViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet var tableview: UITableView!
    var Listitem:[String] = Array()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Listitem.append("meky")
        Listitem.append("15")
        tableview.register(UINib.init(nibName: "checkmarkCell", bundle: nil), forCellReuseIdentifier: "checklistidentfir")
        
        
        tableview.dataSource = self
        tableview.delegate = self

        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return Listitem.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableview.dequeueReusableCell(withIdentifier: "checklistidentfir")as!checkmarkCell
        cell.meky.text = Listitem[indexPath.row]
        cell.number.text = Listitem[indexPath.row]
        cell.selectionStyle = .none
//         cell.checkmark.addTarget(self, action: #selector(checkmarkbuttonclicked(sender:)), for: .touchUpInside )
        cell.checkmark.addTarget(self, action: #selector(checkmark(sender:)), for: .touchUpInside)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 71.5
    }
    
    @objc  func checkmark (sender:UIButton){
        print("buttonpassed")
       if sender.isSelected{
            //
            sender.isSelected = false
        }else{
            print("unpassed")
            sender.isSelected = true
            //
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
