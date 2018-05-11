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


var allArticles = [Article]()


class Networking {


public func getNewsData() {
    let unwrappedURL = URL(string: url)
    print(unwrappedURL!)
    let session = URLSession.shared
    let task = session.dataTask(with: unwrappedURL!) { data, response, error in
        print("Start")
        
        guard let unwrappedURL = data else {return}
        do {
              let jsonDecoder = JSONDecoder()
              let jsonData = try! jsonDecoder.decode(News.self, from: data!)
            
              allArticles = [Article](jsonData.articles)
            
            
            //print(allArticles[0].urlToImage)
          // print(allArticles[0].urlToImage!)
           
            
        } catch {
            print(error)
        }
    
    }
    
    task.resume()
    
    
}
    func downloadImage(at urlString: String, completion: @escaping(Bool, UIImage!) -> ()) {
        
        let url = URL(string: urlString)
        
        let unwrappedURL = url
        
        let request = URLRequest(url: unwrappedURL!)
        let session = URLSession.shared
        let task = session.dataTask(with: request) { (data, response, error) in
            
            guard let data = data, let image = UIImage(data: data) else { completion(false, nil); return}
            completion(true, image)
        }
        task.resume()
        
    }
    
    



}




