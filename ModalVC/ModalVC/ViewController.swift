//
//  ViewController.swift
//  ModalVC
//
//  Created by Coditas on 17/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    let person = Person(firstName: "Manish", lastName: "Katariya", gender: "Male", age: 21, weight: 55, height: 70)

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let myView = ExampleView(frame: CGRect(x: 0, y: 0, width: 250, height: 250))
        myView.center = view.center
        myView.configure(with: "\(person.firstName) \(person.lastName)")
        view.addSubview(myView)
        
    }


}

struct Person {
    
    let firstName: String
    let lastName: String
    let gender: String
    let age: Int
    let weight: Double
    let height: Double

    
}

struct Location {
    let city: String
}

