//
//  MenuItemCollectionViewCell.swift
//  Dekkeni
//
//  Created by Mark on 8/17/19.
//  Copyright © 2019 Dekkeni. All rights reserved.
//

import UIKit

class MenuItemCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var menuItemIcon: UIImageView!
    @IBOutlet weak var menuItemLabel: UILabel!
    
    @IBOutlet weak var separatorView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func toggleSelection(){
        menuItemIcon.image = menuItemIcon.image?.withRenderingMode(.alwaysTemplate)

        if self.isSelected {
            menuItemIcon.tintColor = .red
            menuItemLabel.textColor = .red
            self.contentView.backgroundColor = .white

        }
            
        else{
            menuItemIcon.tintColor = .white
            menuItemLabel.textColor = .white
            self.contentView.backgroundColor = .clear
            
        }
    }

}

extension UIImage {
    
    func imageResize (sizeChange:CGSize)-> UIImage{
        
        let hasAlpha = true
        let scale: CGFloat = 0.0 // Use scale factor of main screen
        
        UIGraphicsBeginImageContextWithOptions(sizeChange, !hasAlpha, scale)
        self.draw(in: CGRect(origin: CGPoint.zero, size: sizeChange))
        
        let scaledImage = UIGraphicsGetImageFromCurrentImageContext()
        return scaledImage!
    }
    
}
