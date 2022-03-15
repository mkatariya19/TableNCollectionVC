//
//  ViewController.swift
//  CollectionVC
//
//  Created by Coditas on 15/03/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 220, height: 50))
        view.addSubview(button)
        button.backgroundColor = .black
        button.center = view.center
        button.setTitle("Show Collection", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    @objc func didTapButton() {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: (view.frame.size.width/3)-3, height: (view.frame.size.width/3)-3)
        layout.minimumLineSpacing = 1
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1)
        layout.minimumInteritemSpacing = 1
        
        let vc = GridCollectionVC(collectionViewLayout: layout)
        vc.title = "CollectionVC"
        vc.navigationItem.largeTitleDisplayMode = .always
        
        let navVC = UINavigationController(rootViewController: vc)
        navVC.navigationBar.prefersLargeTitles = true
        
        present(navVC, animated: true)
    }


}

