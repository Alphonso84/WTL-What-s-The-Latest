//
//  ViewController.swift
//  WTL What's The Latest
//
//  Created by user on 1/22/18.
//  Copyright © 2018 Alphonso. All rights reserved.
//

import UIKit

var allURLS = String()


class MainStoriesView: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsImages.count
    }
    
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MainStoriesCellView
        
        
        
        
        
        DispatchQueue.main.async {
            
            
            cell?.headlineImageView.image = newsImages[indexPath.row]
            
            
            
        }
        cell?.headlineLabel.text = allArticles[indexPath.row].title
        cell?.headlineLabel.textColor = UIColor.white
        return (cell)!
        
    }
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        newsImages.removeAll()
        
        Controller().downloadImage(at:
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
        
        Controller().downloadImage(at:
            //Need to make changes to line below to grab url from each instance
            (allArticles[1].urlToImage)!, completion: { (success, image) in
                if success == true {
                    print("got image data from URL")
                    
                    DispatchQueue.main.async {
                        newsImages.append(image)
                    }
                    
                    
                } else {
                    print ("Error getting image")
                }
                
        })
        
        Controller().downloadImage(at:
            //Need to make changes to line below to grab url from each instance
            (allArticles[2].urlToImage)!, completion: { (success, image) in
                if success == true {
                    print("got image data from URL")
                    
                    
                    
                    DispatchQueue.main.async {
                        newsImages.append(image)
                    }
                    
                    
                    
                    
                } else {
                    print ("Error getting image")
                }
                
        })
        
        Controller().downloadImage(at:
            //Need to make changes to line below to grab url from each instance
            (allArticles[3].urlToImage)!, completion: { (success, image) in
                if success == true {
                    print("got image data from URL")
                    
                    DispatchQueue.main.async {
                        newsImages.append(image)
                    }
                    
                } else {
                    print ("Error getting image")
                }
                
        })
        
        Controller().downloadImage(at:
            //Need to make changes to line below to grab url from each instance
            (allArticles[4].urlToImage)!, completion: { (success, image) in
                if success == true {
                    print("got image data from URL")
                    
                    DispatchQueue.main.async {
                        newsImages.append(image)
                    }
                    
                } else {
                    print ("Error getting image")
                }
                
        })
        
        Controller().downloadImage(at:
            //Need to make changes to line below to grab url from each instance
            (allArticles[5].urlToImage)!, completion: { (success, image) in
                if success == true {
                    print("got image data from URL")
                    
                    
                    DispatchQueue.main.async {
                        newsImages.append(image)
                    }
                    
                    
                } else {
                    print ("Error getting image")
                }
                
        })
        
        Controller().downloadImage(at:
            //Need to make changes to line below to grab url from each instance
            (allArticles[6].urlToImage)!, completion: { (success, image) in
                if success == true {
                    print("got image data from URL")
                    
                    
                    
                    DispatchQueue.main.async {
                        newsImages.append(image)
                    }
                    
                    
                } else {
                    print ("Error getting image")
                }
                
        })
        
        Controller().downloadImage(at:
            //Need to make changes to line below to grab url from each instance
            (allArticles[7].urlToImage)!, completion: { (success, image) in
                if success == true {
                    print("got image data from URL")
                    
                    
                    
                    DispatchQueue.main.async {
                        newsImages.append(image)
                    }
                    
                    
                    
                    
                } else {
                    print ("Error getting image")
                }
                
        })
        
        Controller().downloadImage(at:
            //Need to make changes to line below to grab url from each instance
            (allArticles[8].urlToImage)!, completion: { (success, image) in
                if success == true {
                    print("got image data from URL")
                    
                    
                    
                    DispatchQueue.main.async {
                        newsImages.append(image)
                    }
                    
                    
                    
                    
                } else {
                    print ("Error getting image")
                }
                
        })
        
        Controller().downloadImage(at:
            //Need to make changes to line below to grab url from each instance
            (allArticles[9].urlToImage)!, completion: { (success, image) in
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
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
        
        
        
    }
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    
}










