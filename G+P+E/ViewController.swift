//
//  ViewController.swift
//  G+P+E
//
//  Created by PF on 2017/5/9.
//  Copyright © 2017年 PF. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.just_registerNib(DemoCell.self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.just_dequeueReusableCell(DemoCell.self)
        cell.textLabel?.text = "Swift 最佳编程体验之 \(indexPath.row)"
        return cell
    }
}

