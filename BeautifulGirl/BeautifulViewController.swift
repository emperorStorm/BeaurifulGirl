//
//  BeautifulViewController.swift
//  BeautifulGirl
//
//  Created by mac on 16/6/17.
//  Copyright © 2016年 mac. All rights reserved.
//

import UIKit

class BeautifulViewController: UIViewController {

    @IBOutlet weak var girlImage: UIImageView!
    var imageName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = imageName {
            girlImage.image = UIImage(named: name)
            navigationItem.title = name
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //分享按钮
    @IBAction func share(sender: UIBarButtonItem) {
        print("点击了分享")
    }
}



