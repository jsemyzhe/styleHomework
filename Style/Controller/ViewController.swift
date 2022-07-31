//
//  ViewController.swift
//  Style
//
//  Created by Julia Semyzhenko on 7/31/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    var arrLabelContent = ["Inclusion by design", "Challenge: Large text",
                           "Accessibility by design: An Apple Watch for everypne", "Code along: Build a ",
                           "Meditation for"]
    
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath)
    -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath)
        as! CollectionViewCell
        cell.changeFontAndSize(size: 25)
        if indexPath.row != 0 {
            cell.changeFontAndSize()
        }
        cell.cellImage.image = UIImage(named: "\(indexPath.row)")
        cell.cellLabel.text = arrLabelContent[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String,
                        at indexPath: IndexPath) -> UICollectionReusableView {
        let header  = collectionView.dequeueReusableSupplementaryView(
            ofKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier:  "HeaderCollectionReusableView",
            for: indexPath) as! HeaderCollectionReusableView
        
        header.headerLabel.text = "Discover"
        //        header.sourceSansProForHeader()
        header.changeFontAndSize()
        return header
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if indexPath.row  == 0 {
            return CGSize(width: collectionView.frame.width, height: collectionView.frame.width/1.4)
        }
        else  {
            return CGSize(width: collectionView.frame.width/2.1, height: collectionView.frame.width/3)
        }
    }
}
