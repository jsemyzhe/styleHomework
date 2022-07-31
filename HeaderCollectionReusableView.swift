//
//  HeaderCollectionReusableView.swift
//  Style
//
//  Created by Julia Semyzhenko on 7/31/22.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {
    @IBOutlet weak var headerLabel: UILabel!
    
    func changeFontAndSize() {
        headerLabel.font =  UIFont.sansProBlack(30)
    }
    func sourceSansProForHeader() {
        headerLabel.font =  UIFont.sansProBlack(15)
    }
    
}
