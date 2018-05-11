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
    
    
    
    override func viewDidLoad() {
        Networking().getNewsData()
        
      
    }
    @IBAction func getNewsButton(_ sender: Any) {
        Networking().getNewsData()
        MainStoriesView().imageParser()
       
        
    }
    
    
    
}
