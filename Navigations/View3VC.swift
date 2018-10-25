//
//  View1.swift
//  Navigations
//
//  Created by Zhiyi Xu on 10/24/18.
//  Copyright © 2018 Zhiyi Xu. All rights reserved.
//

import UIKit

class View3VC: UIViewController {
    
    var View3Data = "I'm data from View3."
    @IBOutlet weak var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if (self.presentedViewController != nil) {
            let parentVC = self.presentedViewController as! MainViewVC
            View3Data = parentVC.MainViewData
            dataLabel.text = View3Data 
        }
    }
    @IBAction func goBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
