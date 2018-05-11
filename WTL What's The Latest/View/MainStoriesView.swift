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
        return 2
    }
    
   
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MainStoriesCellView
        
        
            Networking().downloadImage(at:
                //Need to make changes to line below to grab url from each instance
                (allArticles[0].urlToImage)!, completion: { (success, image) in
                    if success == true {
                        print("got image data from URL")
                        DispatchQueue.main.async {
                           
                            newsImages.append(image)
                            
                            
                        }
                        
                    } else {
                        print ("Error getting image")
                    }
                    
            })
        
        Networking().downloadImage(at:
            //Need to make changes to line below to grab url from each instance
            (allArticles[1].urlToImage)!, completion: { (success, image) in
                if success == true {
                    print("got image data from URL")
                    DispatchQueue.main.async {
                        
                        newsImages.append(image)
                        
                        cell?.headlineImageView.image = newsImages[indexPath.row]
                        
                    }
                    
                } else {
                    print ("Error getting image")
                }
                
        })
        
        
        cell?.headlineLabel.text = allArticles[indexPath.row].title
        cell?.headlineLabel.textColor = UIColor.white
        //cell?.headlineImageView.image = newsImages[indexPath.row]
       
        
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

    
    
   
    
   
    
    


