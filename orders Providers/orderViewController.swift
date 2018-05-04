//
//  orderViewController.swift
//  LifeARtistTest
//
//  Created by Mohamed ELfishawy on 5/1/18.
//  Copyright © 2018 Mohamed ELfishawy. All rights reserved.
//

import UIKit

class orderViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet var tableview: UITableView!
    
     var listArray:[String] = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listArray.append("Name")
        listArray.append("Date")
        listArray.append("Total")
        tableview.register(UINib.init(nibName: "ordercell", bundle: nil), forCellReuseIdentifier: "orderlistidentfier")
        
        tableview.dataSource = self
        tableview.delegate = self
        

        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return listArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
        
    {
     let cell = tableView.dequeueReusableCell(withIdentifier: "orderlistidentfier")as!ordercell
        cell.Name.text = listArray[indexPath.row]
        cell.Date.text = listArray[indexPath.row]
        cell.Total.text =  listArray[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 290.0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}

