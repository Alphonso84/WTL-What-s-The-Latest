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
        return newsImages.count
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MainStoriesCellView
        
        
        
        
        
        cell?.headlineLabel.text = allArticles[indexPath.row].title
        cell?.headlineLabel.textColor = UIColor.white
        cell?.headlineImageView.image = newsImages[indexPath.row]
       
        
        return (cell)!
        
    }
    
    
  
    
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        
        
       
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
        
        
    }
    // Do any additional setup after loading the view, typically from a nib.
    
}










