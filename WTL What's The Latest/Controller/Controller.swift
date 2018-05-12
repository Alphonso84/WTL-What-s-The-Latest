//
//  Controller.swift
//  WTL What's The Latest
//
//  Created by user on 5/11/18.
//  Copyright © 2018 Alphonso. All rights reserved.
//

import Foundation
import UIKit

var newsImages = [UIImage]()
class Controller: UIViewController {
    
    
    
    
    
    
    public func downloadImage(at urlString: String, completion: @escaping(Bool, UIImage!) -> ()) {
        
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

