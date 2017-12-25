//
//  ThirdViewController.swift
//  MLHybridDemo
//
//  Created by mm on 12/24/17.
//  Copyright © 2017 Nil. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func test(_ sender: Any) {
        
        //        "hybrid://forward?param=%7B%22topage%22%3A%22index2%22%2C%22type%22%3A%22native%22%2C%22navigateion%22%3A%22none%22%7D"
        //        "hybrid://forward?param=%7B%22topage%22%3A%22http%3A%2F%2Fkq.medlinker.com%2Fwebapp%2Fkq-desk%2Fadmorgs.html%22%2C%22type%22%3A%22h5%22%7D"
        
        let urlString = "http://yexiaochai.github.io/blade/demo/debug.html"
        if let vc = MLHybridViewController.load(urlString: urlString) {
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
