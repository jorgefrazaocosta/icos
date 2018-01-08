//
//  ICOCell.swift
//  InitialCoinOffering
//
//  Created by Jorge Costa on 04/01/2018.
//  Copyright © 2018 JorgeCosta. All rights reserved.
//

import UIKit

class ICOCell: UITableViewCell {

    // MARK: - Outlets
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var averageRatingLabel: UILabel!
    
    // MARK: - Internal
    
    internal func setup(title: String, rating: Double) {
        
        self.titleLabel.text = title
        self.averageRatingLabel.text = "\(rating)%"
        
    }
    
}
