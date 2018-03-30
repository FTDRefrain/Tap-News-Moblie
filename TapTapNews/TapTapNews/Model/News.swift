//
//  News.swift
//  TapTapNews
//
//  Created by WanliMa on 2018/3/29.
//  Copyright © 2018年 WanliMa. All rights reserved.
//

import Foundation

class News {
    let title: String
    let description: String
    var source: String?
    var imageUrl: String?
    
    init(title: String, description: String, source: String? = nil, imageUrl: String? = nil) {
        self.title = title
        self.description = description
        self.source = source
        self.imageUrl = imageUrl
    }
}
