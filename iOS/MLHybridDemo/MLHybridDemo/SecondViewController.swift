//
//  SecondViewController.swift
//  MLHybridDemo
//
//  Created by caiyang on 2017/5/31.
//  Copyright © 2017年 Nil. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBAction func test(_ sender: Any) {

        let urlString = "https://laszlozach.github.io/Hybrid/webapp/demo/index.html"
        
        if let vc = MLHybridViewController.load(urlString: urlString) {
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    

}

