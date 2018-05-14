//
//  ViewController.swift
//  WTL What's The Latest
//
//  Created by user on 1/22/18.
//  Copyright © 2018 Alphonso. All rights reserved.
//

import UIKit


class MainStoriesView: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myImageURLs.count
    }
    
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MainStoriesCellView
        
       
        
        Controller.downloadImage(at:
            //Need to make changes to line below to grab url from each instance
            (myImageURLs[0]), completion: { (success, image) in
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
        Controller.downloadImage(at:
            //Need to make changes to line below to grab url from each instance
            (myImageURLs[1]), completion: { (success, image) in
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
        Controller.downloadImage(at:
            //Need to make changes to line below to grab url from each instance
            (myImageURLs[2]), completion: { (success, image) in
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
        Controller.downloadImage(at:
            //Need to make changes to line below to grab url from each instance
            (myImageURLs[3]), completion: { (success, image) in
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
        Controller.downloadImage(at:
            //Need to make changes to line below to grab url from each instance
            (myImageURLs[4]), completion: { (success, image) in
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
        Controller.downloadImage(at:
            //Need to make changes to line below to grab url from each instance
            (myImageURLs[5]), completion: { (success, image) in
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
        Controller.downloadImage(at:
            //Need to make changes to line below to grab url from each instance
            (myImageURLs[6]), completion: { (success, image) in
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
        Controller.downloadImage(at:
            //Need to make changes to line below to grab url from each instance
            (myImageURLs[7]), completion: { (success, image) in
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
        Controller.downloadImage(at:
            //Need to make changes to line below to grab url from each instance
            (myImageURLs[8]), completion: { (success, image) in
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
        Controller.downloadImage(at:
            //Need to make changes to line below to grab url from each instance
            (myImageURLs[9]), completion: { (success, image) in
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
        Controller.downloadImage(at:
            //Need to make changes to line below to grab url from each instance
            (myImageURLs[10]), completion: { (success, image) in
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
        Controller.downloadImage(at:
            //Need to make changes to line below to grab url from each instance
            (myImageURLs[11]), completion: { (success, image) in
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
        Controller.downloadImage(at:
            //Need to make changes to line below to grab url from each instance
            (myImageURLs[12]), completion: { (success, image) in
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
        Controller.downloadImage(at:
            //Need to make changes to line below to grab url from each instance
            (myImageURLs[13]), completion: { (success, image) in
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
        Controller.downloadImage(at:
            //Need to make changes to line below to grab url from each instance
            (myImageURLs[14]), completion: { (success, image) in
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
        Controller.downloadImage(at:
            //Need to make changes to line below to grab url from each instance
            (myImageURLs[15]), completion: { (success, image) in
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
        Controller.downloadImage(at:
            //Need to make changes to line below to grab url from each instance
            (myImageURLs[16]), completion: { (success, image) in
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
        Controller.downloadImage(at:
            //Need to make changes to line below to grab url from each instance
            (myImageURLs[17]), completion: { (success, image) in
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
        Controller.downloadImage(at:
            //Need to make changes to line below to grab url from each instance
            (myImageURLs[18]), completion: { (success, image) in
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
        Controller.downloadImage(at:
            //Need to make changes to line below to grab url from each instance
            (myImageURLs[19]), completion: { (success, image) in
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
        
        
        return (cell)!
        
    }
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
       
        Controller().getImageURLS()
       
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
        
        
        
    }
    // Do any additional setup after loading the view, typically from a nib.
    
}










