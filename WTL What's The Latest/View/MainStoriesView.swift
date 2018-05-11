//
//  ViewController.swift
//  WTL What's The Latest
//
//  Created by user on 1/22/18.
//  Copyright © 2018 Alphonso. All rights reserved.
//

import UIKit

var allURLS = String()
var newsImages = [UIImage]()

class MainStoriesView: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
   
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MainStoriesCellView
        
        func appendImages(arrayIndex: Int) {
            Networking().downloadImage(at:
                //Need to make changes to line below to grab url from each instance
                (allArticles[arrayIndex].urlToImage)!, completion: { (success, image) in
                    if success == true {
                        print("got image data from URL")
                        DispatchQueue.main.async {
                           
                            newsImages.append(image)
                            
                            
                        }
                        
                    } else {
                        print ("Error getting image")
                    }
                    
            })
        }
        
        appendImages(arrayIndex: 0)
        appendImages(arrayIndex: 1)
        appendImages(arrayIndex: 2)
        appendImages(arrayIndex: 3)
        appendImages(arrayIndex: 4)
        appendImages(arrayIndex: 5)
        appendImages(arrayIndex: 6)
        appendImages(arrayIndex: 7)
        appendImages(arrayIndex: 8)
        appendImages(arrayIndex: 9)
        appendImages(arrayIndex: 10)
        appendImages(arrayIndex: 11)
        appendImages(arrayIndex: 12)
        appendImages(arrayIndex: 13)
        appendImages(arrayIndex: 14)
        appendImages(arrayIndex: 15)
        appendImages(arrayIndex: 16)
        appendImages(arrayIndex: 17)
        appendImages(arrayIndex: 18)
        appendImages(arrayIndex: 19)
        
        
        
        
        
        cell?.headlineLabel.text = allArticles[indexPath.row].title
        cell?.headlineLabel.textColor = UIColor.white
        cell?.headlineImageView.image = newsImages[indexPath.row]
       
        
        return (cell)!
    }
    
   
    
    func viewWillAppear() {
        Networking().getNewsData()
    
   
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
         print(newsImages.count)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
      
        
        
        }
        // Do any additional setup after loading the view, typically from a nib.
    
    
    
    
    }

    
    
   
    
   
    
    


