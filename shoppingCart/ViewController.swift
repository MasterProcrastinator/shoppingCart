//
//  ViewController.swift
//  shoppingCart
//
//  Created by ALVIN CHEN on 11/2/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = list[indexPath.row]
        return cell
    }
    
//blah
    
    @IBOutlet weak var textFieldOutlet: UITextField!
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    var list = ["Item", "Item2", "Item3"]
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        
    }

    
    @IBAction func addAction(_ sender: UIButton) {
        list.append(textFieldOutlet.text!)
        
        tableViewOutlet.reloadData()
    }
    
    
    
    
    
    
    
    
    

}

