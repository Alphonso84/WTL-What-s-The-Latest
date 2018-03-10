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
            let jsonDecoder = JSONDecoder()

            let jsonData = try jsonDecoder.decode(News.self, from: data!)
            
            let news = jsonData.articles
            

            print(news)
            
        } catch {
            print(error)
        }
    }
    
    task.resume()
    
}


