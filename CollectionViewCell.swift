//
//  CollectionViewCell.swift
//  Style
//
//  Created by Julia Semyzhenko on 7/31/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellLabel: UILabel!
    
     func changeFontAndSize() {
         cellLabel.font =  UIFont.sansProBlack(15)
    }
    func changeFontAndSize(size: CGFloat) {
        cellLabel.font =  UIFont.sansProBlack(size)
   }
}
