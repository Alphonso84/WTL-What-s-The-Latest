//
//  Controller.swift
//  WTL What's The Latest
//
//  Created by user on 5/11/18.
//  Copyright © 2018 Alphonso. All rights reserved.
//

import Foundation
import UIKit

var myImageURLs = [String]()
var newsImages = [UIImage]()
class Controller: UIViewController {
    
    
    
    
    
    //FUNCTION CREATES USABLE UIIMAGE FROM URL STRING
    public static func downloadImage(at urlStrings: [String], completion: @escaping(Bool, UIImage!) -> ()) {
        var url = URL(string: "")
        for item in urlStrings {
            url = URL(string: item)!
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
//        let url = URL(string: urlStrings)
        
        
    
    //COLLECTING IMAGE URLS INTO ARRAY FOR USE IN TABLEVIEW
    public func getImageURLS() {
        
        myImageURLs.append(allArticles[0].urlToImage!)
        myImageURLs.append(allArticles[1].urlToImage!)
        myImageURLs.append(allArticles[2].urlToImage!)
        myImageURLs.append(allArticles[3].urlToImage!)
        myImageURLs.append(allArticles[4].urlToImage!)
        myImageURLs.append(allArticles[5].urlToImage!)
        myImageURLs.append(allArticles[6].urlToImage!)
        myImageURLs.append(allArticles[7].urlToImage!)
        myImageURLs.append(allArticles[8].urlToImage!)
        myImageURLs.append(allArticles[9].urlToImage!)
//        myImageURLs.append(allArticles[10].urlToImage!)
//        myImageURLs.append(allArticles[11].urlToImage!)
//        myImageURLs.append(allArticles[12].urlToImage!)
//        myImageURLs.append(allArticles[13].urlToImage!)
//        myImageURLs.append(allArticles[14].urlToImage!)
//        myImageURLs.append(allArticles[15].urlToImage!)
//        myImageURLs.append(allArticles[16].urlToImage!)
//        myImageURLs.append(allArticles[17].urlToImage!)
//        myImageURLs.append(allArticles[18].urlToImage!)
//        myImageURLs.append(allArticles[19].urlToImage!)
       
        
    }
    
    
}

