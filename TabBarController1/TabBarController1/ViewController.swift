//
//  ViewController.swift
//  TabBarController1
//
//  Created by Coditas on 16/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    private let button: UIButton = {
        
        let button  =  UIButton(frame: CGRect(x: 00, y: 0, width: 200, height: 52))
        button.setTitle("Log in", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        view.addSubview(button)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.center = view.center
    }
    
    @objc func didTapButton() {
        
        let tabBarVC = UITabBarController()
        
        let vc1 = UINavigationController(rootViewController: SecondViewController())
        let vc2 = UINavigationController(rootViewController:ThirdViewController())
        let vc3 = UINavigationController(rootViewController:FourthViewController())
        let vc4 = UINavigationController(rootViewController:FifthViewController())
        let vc5 = UINavigationController(rootViewController:SixthViewController())
        
        vc1.title = "music"
        vc2.title = "settings"
        vc3.title = "home"
        vc4.title = "camera"
        vc5.title = "contacts"
        
        tabBarVC.setViewControllers([vc1, vc2, vc3, vc4, vc5], animated: false)
        
        tabBarVC.modalPresentationStyle = .fullScreen
        
        present (tabBarVC, animated: true)
    }
    


}

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        title = "music"
    }
}

class ThirdViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        title = "settings"
    }
}

class FourthViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        title = "home"
    }
}

class FifthViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        title = "camera"
    }
}

class SixthViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        title = "contacts"
    }
}


