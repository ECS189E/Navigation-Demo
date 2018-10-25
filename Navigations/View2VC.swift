//
//  View1.swift
//  Navigations
//
//  Created by Zhiyi Xu on 10/24/18.
//  Copyright © 2018 Zhiyi Xu. All rights reserved.
//

import UIKit

class View2VC: UIViewController {
    
    var View2Data = "I'm data from View2."
    @IBOutlet weak var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataLabel.text = View2Data
    }
    
    // View 2 Cont
    // Customized back button with a button to view controller segue.
}
