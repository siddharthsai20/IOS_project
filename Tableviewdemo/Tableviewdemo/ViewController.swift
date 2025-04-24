//
//  ViewController.swift
//  Tableviewdemo
//
//  Created by siddharth sai on 4/8/25.
//

import UIKit

class Product {
    var productname:String = ""
    var productDescription:String = ""
    
    init(productname: String, productDesc: String) {
        self.productname = productname
        self.productDescription = productDesc
    }
}//end of product class


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // returnthe product array count
        return  productArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // create a cell
        let cell = Tableviewol.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath)
        
        
        // populate  cell with data
        cell.textLabel?.text = productArray[indexPath.row].productname
        
        
        //return the cell
        return cell
    }
    
    
    @IBOutlet weak var Tableviewol: UITableView!
    var productArray = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Tableviewol.dataSource = self
        Tableviewol.delegate = self
        
        
        
        
        let product1 = Product(productname: "iPhone 16", productDesc: "This is a new iPhone 16")
        productArray.append(product1)
        let product2 = Product(productname: "MacBook Pro", productDesc: "This is a new MacBook Pro")
        productArray.append(product2)
        let product3 = Product(productname: "AirPods Pro", productDesc: "This is a new AirPods Pro")
        productArray.append(product3)
        let product4 = Product(productname: "Apple Watch Series 8", productDesc: "This is a new Apple Watch Series 8")
        productArray.append(product4)
        
        let product5 = Product(productname: "iMac 24-inch", productDesc: "This is a new iMac 24-inch")
        productArray.append(product5)
        
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "resultsegue" {
            let destination = segue.destination as! ResultViewController
            destination.product = productArray[(Tableviewol.indexPathForSelectedRow?.row)!]
            
            
        }
        
    }
    
}
