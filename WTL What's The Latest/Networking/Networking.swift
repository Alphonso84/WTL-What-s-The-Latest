//
//  Networking.swift
//  WTL What's The Latest
//
//  Created by user on 1/22/18.
//  Copyright © 2018 Alphonso. All rights reserved.
//

import Foundation
import UIKit
//URL STRUCTURE: Base->category->apiKey
var baseURL = "https://newsapi.org/v2/top-headlines?country=us&"
private var apiKey = "apiKey=8ebe5d6660ea4d8a8d73aac36ce2c5e4"
var category = "category=technology&"

var url = "\(baseURL)\(category)\(apiKey)"

var newsStories: Article? = nil

public func getNewsData() {
    let unwrappedURL = URL(string: url)
    print(unwrappedURL!)
    let session = URLSession.shared
    let task = session.dataTask(with: unwrappedURL!) { data, response, error in
        print("Start")
        
        guard let unwrappedURL = data else {return}
        do {
//            let jsonDecoder = JSONDecoder()
//
//            let jsonData = try jsonDecoder.decode(Stories.self, from: data!)
            let jsonData = try JSONSerialization.jsonObject(with: unwrappedURL, options: .allowFragments )
            
//            let jsonData = try JSONSerialization.jsonObject(with: data!, options:.allowFragments) as? [String : AnyObject]
            let newsData = jsonData as! [String: AnyObject]
            
            newsStories = Article(source: newsData["source"] as? String, author: newsData["author"] as? String, title: newsData["title"] as? String, description: newsData["description"] as? String, url: newsData["url"] as? String, urlToImage: newsData["urlToImage"] as? String, publishedAt: newsData["publishedAt"] as? String)
            
            print(newsStories)
            
        } catch {
            print(error)
        }
    }
    
    task.resume()
    
}


