//
//  DateFormatter.swift
//  InitialCoinOffering
//
//  Created by Jorge Costa on 04/01/2018.
//  Copyright © 2018 JorgeCosta. All rights reserved.
//

import Foundation

extension DateFormatter {
    
    internal static func serverFormat() -> DateFormatter {
    
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss'Z'"
    
        return formatter
    
    }
    
}
