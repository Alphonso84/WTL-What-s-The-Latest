//
//  Model.swift
//  WTL What's The Latest
//
//  Created by user on 1/22/18.
//  Copyright © 2018 Alphonso. All rights reserved.
//

import Foundation
import UIKit


struct Stories: Codable {
    var articles = String()

    init(with dictionary: [String: AnyObject]?) {
        guard let dictionary = dictionary else { return }
        articles = dictionary["articles"] as! String
}
}

struct Article: Codable {
    var source = String()
    var author = String()
    var title = String()
    var description = String()
    var url = String()
    var urlToImage = String()
    var publishedAt = String()

    init(with dictionary: [String: AnyObject]?) {
        guard let dictionary = dictionary else { return }
        source = dictionary["source"] as! String
        author = dictionary["author"] as! String
        title = dictionary["title"] as! String
        description = dictionary["description"] as! String
        url = dictionary["url"] as! String
        urlToImage = dictionary["urlToImage"] as! String
        publishedAt = dictionary["publishedAt"] as! String
    }

}

