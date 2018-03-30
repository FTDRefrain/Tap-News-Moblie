//
//  NewsTableViewController.swift
//  TapTapNews
//
//  Created by WanliMa on 2018/3/29.
//  Copyright © 2018年 WanliMa. All rights reserved.
//

import UIKit
import SVProgressHUD

class NewsTableViewController: UITableViewController {

    var data = NewsList().newsList
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register((UINib(nibName:"NewsTableViewCell", bundle: nil)), forCellReuseIdentifier: "NewsTableViewCell")

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
            
        cell.title.text = data[indexPath.row].title
        
        DispatchQueue.global().async {
            let urlImage = try? Data(contentsOf: URL(string: self.data[indexPath.row].imageUrl!)!)
            if let imageData = urlImage {
                DispatchQueue.main.async {
                    cell.previewImage.image = UIImage(data: imageData)
                }
            }
        }
            
        return cell
    }
    
    //configure tableview cell
    func configureTableView(){
        self.tableView.estimatedRowHeight = 100
    }

}
