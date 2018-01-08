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

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - Outlets
    
    @IBOutlet weak var tableView: UITableView!
    
    
    // MARK: - Properties
    
    private var icos: [ICO]?
    
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        setupTableView()
        serverRequest()
        
    }
    
    
    // MARK: - Setup
    
    private func setupTableView() {
        self.tableView.register(UINib.init(nibName: "ICOCell", bundle: nil), forCellReuseIdentifier: "ICOCell")
    }
    
    
    // MARK: - Server
    
    private func serverRequest() {
        
        let url = "https://private-cd8b6-jorgecosta89.apiary-mock.com/icos"
        Alamofire.request(url).responseArray(keyPath: "data") { (response: DataResponse<[ICO]>) in
            
            let icos = response.result.value
            self.icos = icos
            
            self.tableView.alpha = 1
            self.tableView.reloadData()
            
        }
        
    }
    
    // MARK: - TableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.icos?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "ICOCell") as! ICOCell
        
        if let ico = self.icos?[indexPath.row],
            let name = ico.name,
            let rating = ico.tokenPrice {
            cell.setup(title: name , rating: rating)
        }
        
        return cell
        
    }
    
}

