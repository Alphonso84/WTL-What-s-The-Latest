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
private var apiKey = ""
var category = "category=technology&"
var url = "\(baseURL)\(category)\(apiKey)"
var allArticles = [Article?]()




class Networking: UIViewController {
    
   @objc func getNewsData() {
    
        let unwrappedURL = URL(string: url)
        print(unwrappedURL!)
        let session = URLSession.shared
        let task = session.dataTask(with: unwrappedURL!) { data, response, error in
            print("Start")
            
            guard data != nil else {return}
            do {
                let jsonDecoder = JSONDecoder()
                let jsonData = try! jsonDecoder.decode(News.self, from: data!)
                print(jsonData.articles[0].title)
                
                
                DispatchQueue.main.async {
                allArticles.removeAll()
                allArticles = [Article](jsonData.articles)
                
                    }
            
            }
            
        }
        
        task.resume()
        
    }
    
}







