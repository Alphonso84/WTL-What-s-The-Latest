//
//  Model.swift
//  WTL What's The Latest
//
//  Created by user on 1/22/18.
//  Copyright © 2018 Alphonso. All rights reserved.
//

import Foundation
import UIKit

struct Model: Codable {
    let status: String
    let totalResults: Int
    let articles: [Article]
}

struct Article: Codable {
    let source: String
    let author, title, description, url: String
    let urlToImage, publishedAt: String
}

struct Source: Codable {
    let id: String?
    let name: String
}

// MARK: Convenience initializers

extension Model {
    init?(data: Data) {
        guard let me = try? JSONDecoder().decode(Model.self, from: data) else { return nil }
        self = me
    }

    init?(_ json: String, using encoding: String.Encoding = .utf8) {
        guard let data = json.data(using: encoding) else { return nil }
        self.init(data: data)
    }

    init?(fromURL url: String) {
        guard let url = URL(string: url) else { return nil }
        guard let data = try? Data(contentsOf: url) else { return nil }
        self.init(data: data)
    }

    var jsonData: Data? {
        return try? JSONEncoder().encode(self)
    }

    var json: String? {
        guard let data = self.jsonData else { return nil }
        return String(data: data, encoding: .utf8)
    }
}

extension Article {
    init?(data: Data) {
        guard let me = try? JSONDecoder().decode(Article.self, from: data) else { return nil }
        self = me
    }

    init?(_ json: String, using encoding: String.Encoding = .utf8) {
        guard let data = json.data(using: encoding) else { return nil }
        self.init(data: data)
    }

    init?(fromURL url: String) {
        guard let url = URL(string: url) else { return nil }
        guard let data = try? Data(contentsOf: url) else { return nil }
        self.init(data: data)
    }

    var jsonData: Data? {
        return try? JSONEncoder().encode(self)
    }

    var json: String? {
        guard let data = self.jsonData else { return nil }
        return String(data: data, encoding: .utf8)
    }
}

extension Source {
    init?(data: Data) {
        guard let me = try? JSONDecoder().decode(Source.self, from: data) else { return nil }
        self = me
    }

    init?(_ json: String, using encoding: String.Encoding = .utf8) {
        guard let data = json.data(using: encoding) else { return nil }
        self.init(data: data)
    }

    init?(fromURL url: String) {
        guard let url = URL(string: url) else { return nil }
        guard let data = try? Data(contentsOf: url) else { return nil }
        self.init(data: data)
    }

    var jsonData: Data? {
        return try? JSONEncoder().encode(self)
    }

    var json: String? {
        guard let data = self.jsonData else { return nil }
        return String(data: data, encoding: .utf8)
    }
}




//struct Stories: Codable {
//    var articles = String()
//
//    init(with dictionary: [String: AnyObject]?) {
//        guard let dictionary = dictionary else { return }
//        articles = dictionary["articles"] as! String
//}
//}
//
//struct Article: Codable {
//    var source = String()
//    var author = String()
//    var title = String()
//    var description = String()
//    var url = String()
//    var urlToImage = String()
//    var publishedAt = String()
//
//    init(with dictionary: [String: AnyObject]?) {
//        guard let dictionary = dictionary else { return }
//        source = dictionary["source"] as! String
//        author = dictionary["author"] as! String
//        title = dictionary["title"] as! String
//        description = dictionary["description"] as! String
//        url = dictionary["url"] as! String
//        urlToImage = dictionary["urlToImage"] as! String
//        publishedAt = dictionary["publishedAt"] as! String
//    }
//
//}

