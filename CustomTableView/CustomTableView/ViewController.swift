//
//  ViewController.swift
//  CustomTableView
//
//  Created by Coditas on 28/03/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!
    
    struct celest {
        
        let title: String
        let imageName: String
        
        
    }
    
    let data: [celest] = [
        celest(title: "I revolve", imageName: "earth"),
    celest(title: "RiseNset", imageName: "Sun"),
    celest(title: "LordOfRing", imageName: "Saturn"),
    celest(title: "HalfNfull", imageName: "Moon"),
    celest(title: "Glaring", imageName: "Flare")
]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celest = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier:"cell", for: indexPath) as! CustomTableViewCell
        
        cell.label.text = celest.title
        cell.iconImageView.image = UIImage(named: celest.imageName)
        return cell
    }


}

