//
//  ViewController.swift
//  swift-sample-code
//
//  Created by Munesada Yohei on 2015/04/26.
//  Copyright (c) 2015 Munesada Yohei. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView = UITableView()

    
//MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addUIComponents()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


//MARK : UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        cell.textLabel?.text = String(indexPath.row)
        return cell
    }


//MARK : Private Functions
    
    /**
        UIコンポーネントをViewに配置する
    */
    private func addUIComponents() {
        
        tableView.frame = self.view.frame
        tableView.dataSource = self
        tableView.delegate = self
        self.view.addSubview(tableView)
    }

}

