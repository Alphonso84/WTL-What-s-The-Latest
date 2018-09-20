//
//  InitialScreen.swift
//  WTL What's The Latest
//
//  Created by user on 3/15/18.
//  Copyright © 2018 Alphonso. All rights reserved.
//

import Foundation
import UIKit

class InitialScreen: UIViewController {
    
    @objc func switchViews() {
        
        DispatchQueue.main.async() {
            
            self.performSegue(withIdentifier: "initialSegue", sender: self)
            
        }
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
       Networking().getNewsData()
       
    }
    override func viewDidLoad() {
        //Controller().iterateImageUrl()
       
        
//        Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(switchViews), userInfo: nil, repeats: false)
       
       
        
        
        
    }
    @IBAction func getNewsButton(_ sender: Any) {
        
        Controller().getImageURLS()
        Controller.downloadImage(at: myImageURLs) { (true, image) in
            newsImages.append(image!)
            
        }
        
    }
    
    
    
}
