//
//  ViewController.swift
//  TableViewControllerOne
//
//  Created by Coditas on 14/03/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapButtonOne() {
        
        let vc = TableViewControllerOne()
        vc.models = [
        "Pink Floyd",
        "Backstreetboys",
        "Led Zeppelin",
        "The Beatles",
        "Guns N' Roses"]
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func didTapButtonTwo() {
        let vc = TableViewControllerOne()
        vc.models = [
        "Queen",
        "Linkin Park",
        "*NSYNC",
        "One Direction",
        "ColdPlay",
        "The Chainsmokers"]
        navigationController?.pushViewController(vc, animated: true)
        
    }

}

