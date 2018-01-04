//
//  Review.swift
//  InitialCoinOffering
//
//  Created by Jorge Costa on 03/01/2018.
//  Copyright © 2018 JorgeCosta. All rights reserved.
//

import Foundation
import ObjectMapper

class Review: Mappable {
    
    // MARK: - Properties
    
    var name: String?
    var evaluation: Double?
    
    
    // MARK: - Initialization
    
    required init?(map: Map) {
        
    }
    
    
    // MARK: - Mapping
    
    func mapping(map: Map) {
        
        self.name               <- map["name"]
        self.evaluation         <- map["evaluation"]
        
    }

}
