//
//  Book.swift
//  Booklog
//
//  Created by Вадим on 23.05.2021.
//

import Foundation
import UIKit

class Book: NSObject {
    var title: String
    var author: String
    var progress: String
    var rating: Int
    
    init(title: String, author: String, progress: String, rating: Int) {
        self.title = title
        self.author = author
        self.progress = progress
        self.rating = rating
        super.init()
    }
}
