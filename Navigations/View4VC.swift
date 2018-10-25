//
//  View4VC.swift
//  Navigations
//
//  Created by Zhiyi Xu on 10/24/18.
//  Copyright © 2018 Zhiyi Xu. All rights reserved.
//

import Foundation
import UIKit

class View4VC: UIViewController {
    
    var View4Data = "I'm data from View4."
    @IBOutlet weak var dataLabel: UILabel!
    @IBAction func goBack(_ sender: Any) {
        // Go Back by poping if the view was pusehd.
        // If you want to trigger it besides the given back button.
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
