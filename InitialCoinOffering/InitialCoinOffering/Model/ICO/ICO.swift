//
//  ICO.swift
//  InitialCoinOffering
//
//  Created by Jorge Costa on 03/01/2018.
//  Copyright © 2018 JorgeCosta. All rights reserved.
//

import Foundation
import ObjectMapper

class ICO: Mappable {
    
    // MARK: - Properties
    
    var id: String?
    var name: String?
    var shortname: String?
    var crowdsaleDate: Date?
    var tokenPrice: Double?
    var reviews: [Review]?
    var totalTokens: Int?
    var whitelistUrl: URL?
    var notes: String?
    var siteUrl: URL?
    
    
    // MARK: - Initialization
    
    required init?(map: Map) {
        
    }
    
    
    // MARK: - Mapping
    
    func mapping(map: Map) {
        
        let dateFormatter = DateFormatter.serverFormat()
        
        self.id                 <- map["id"]
        self.name               <- map["name"]
        self.shortname          <- map["shortname"]
        self.crowdsaleDate      <- (map["crowdsale_date"], DateFormatterTransform(dateFormatter: dateFormatter))
        self.tokenPrice         <- map["token_price"]
        self.reviews            <- map["evaluation"]
        self.totalTokens        <- map["total_tokens"]
        self.whitelistUrl       <- (map["whitelist_url"], URLTransform())
        self.notes              <- map["notes"]
        self.siteUrl            <- (map["site_url"], URLTransform())
        
    }
    
}
