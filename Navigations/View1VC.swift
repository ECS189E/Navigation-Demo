//
//  View1.swift
//  Navigations
//
//  Created by Zhiyi Xu on 10/24/18.
//  Copyright © 2018 Zhiyi Xu. All rights reserved.
//

import UIKit

class View1VC: UIViewController {
    
    var View1Data = "I'm data from View1."
    @IBOutlet weak var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataLabel.text = View1Data
    }
}
