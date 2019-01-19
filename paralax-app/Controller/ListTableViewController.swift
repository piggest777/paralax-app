//
//  ViewController.swift
//  paralax-app
//
//  Created by Denis Rakitin on 2019-01-19.
//  Copyright © 2019 Denis Rakitin. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "paralaxCell", for: indexPath) as? ParalaxCell else {return UITableViewCell()}
        
        cell.cofigureCell(withImage: imageArray[indexPath.row]!, andDescription: nameArray[indexPath.row])
        
        return cell
        
    }


}

