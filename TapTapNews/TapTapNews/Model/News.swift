//
//  News.swift
//  Tap_New_iOS
//
//  Created by Yichi Zhang on 1/7/18.
//  Copyright © 2018 Yichi Zhang. All rights reserved.
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
