//
//  GridCollectionVC.swift
//  CollectionVC
//
//  Created by Coditas on 15/03/22.
//

import UIKit

private let reuseIdentifier = "Cell"

class GridCollectionVC: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = .systemBackground

        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

    }




    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        cell.backgroundColor = .systemGray
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        print("Did tap cell at position: \(indexPath.row)")
    }

   
}
