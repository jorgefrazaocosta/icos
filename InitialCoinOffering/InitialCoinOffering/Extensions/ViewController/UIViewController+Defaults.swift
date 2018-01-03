//
//  UIViewController+Defaults.swift
//  InitialCoinOffering
//
//  Created by Jorge Costa on 03/01/2018.
//  Copyright © 2018 JorgeCosta. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    // MARK: - Public
    
    public static func defaultViewController() -> Self {
        return self.init(nibName: String(describing: self), bundle: nil)
    }
    
}
