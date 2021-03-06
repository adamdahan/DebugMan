//
//  Log.swift
//  exampleWindow
//
//  Created by Remi Robert on 17/01/2017.
//  Copyright © 2017 Remi Robert. All rights reserved.
//

import UIKit

class Log: Copying {
    
    let id: String
    let fileInfo: String?
    let content: String
    let date: Date?
    let color: UIColor?
    
    var isTag: Bool = false
    
    
    
    init(content: String, color: UIColor?, fileInfo: String? = nil, isTag: Bool = false) {
        self.id = NSUUID().uuidString
        self.fileInfo = fileInfo
        self.content = content
        self.date = Date()
        self.color = color
        self.isTag = isTag
    }
    
    required init(original: Log) {
        id = original.id
        fileInfo = original.fileInfo
        content = original.content
        date = original.date
        color = original.color
        isTag = original.isTag
    }
}

