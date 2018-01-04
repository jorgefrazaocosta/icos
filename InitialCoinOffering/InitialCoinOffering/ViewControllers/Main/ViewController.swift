//
//  ViewController.swift
//  InitialCoinOffering
//
//  Created by Jorge Costa on 03/01/2018.
//  Copyright © 2018 JorgeCosta. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper

class ViewController: UIViewController {

    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        serverRequest()
        
    }
    
    // MARK: - Server
    
    private func serverRequest() {
        
        let url = "https://private-cd8b6-jorgecosta89.apiary-mock.com/icos"
        Alamofire.request(url).responseArray(keyPath: "data") { (response: DataResponse<[ICO]>) in
            
            let icos = response.result.value
            print(icos ?? "erro")
            
        }
        
    }
    
}

