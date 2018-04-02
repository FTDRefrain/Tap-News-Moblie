//
//  NewsTableViewController.swift
//  TapTapNews
//
//  Created by WanliMa on 2018/4/2.
//  Copyright © 2018年 Yichi Zhang. All rights reserved.
//

import UIKit

class NewsTableViewController: UITableViewController {
    
    var data = NewsList().newsList
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register((UINib(nibName:"NewsTableViewCell", bundle: nil)), forCellReuseIdentifier: "NewsTableViewCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "NewsTableViewCell",
                                                     for: indexPath) as! NewsTableViewCell
        
            cell.titlePreview.text = data[indexPath.row].title
            
            DispatchQueue.global().async {
                let urlImage = try? Data(contentsOf: URL(string: self.data[indexPath.row].imageUrl!)!)
                if let imageData = urlImage {
                    DispatchQueue.main.async {
                        cell.preview.image = UIImage(data: imageData)
                    }
                }
            }
            
            return cell
    }
    
}
