//
//  ViewController.swift
//  Navigations
//
//  Created by Zhiyi Xu on 10/24/18.
//  Copyright © 2018 Zhiyi Xu. All rights reserved.
//

import UIKit

class MainViewVC: UIViewController {
    
    var MainViewData = "I'm data from MainView."

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // View 1
    // Segue with identifier "MainToView1"
    // The segue is added by Control drag from a View Controller to another View Controller.
    
    // It is a Show segue. It pushes the destination View Controller to a Stack.
    // In the whole using experience, the visited VC will be on the stack.
    // A new one will be pushed. If user goes back, the old one will be poped.
    
    // With the navigation controller, it gives you a back button automatically.
    @IBAction func toView1(_ sender: Any) {
        performSegue(withIdentifier: "MainToView1", sender: self)
    }
    
    // View 1 Cont
    // How to pass data
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MainToView1" {
            let dest = segue.destination as! View1VC
            dest.View1Data = MainViewData
        }
        if segue.identifier == "MainToView2" {
            let dest = segue.destination as! View2VC
            dest.View2Data = MainViewData
        }
    }
    
    // View 2
    // Segue with identifier "MainToView2"
    // The segue is added by Control drag from a button to another View Controller.
    // It is a Present segue. It only show the VC on top of the old one.
    // Cont... in View2VC.swift
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        // View 2 Cont
        // return true or false to tell if you really want to perform the triggered segue.
        // Will not be called if the segue is perform by "performSegue"
        if identifier == "MainToView2" {
            // return false
        }
        return true
    }
    
    // View 3
    func toView3() {
        // Getting the storyboard
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        // Getting the view controller
        let vc = storyboard.instantiateViewController(withIdentifier: "View3") as! View3VC
        // One way to pass data.
//        vc.View3Data = MainViewData
        // Present the vc that is found.
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func buttonToView3(_ sender: Any) {
        toView3()
    }
    
    // View 4
    // Same format as View 3
    // Instead of Present, using Show.
    func toView4() {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "View4") as! View4VC
        vc.View4Data = MainViewData
        if (navigationController != nil) {
            navigationController?.pushViewController(vc, animated: true)
        } else {
            print("Cannot find navigation controller.")
        }
    }
    
    @IBAction func buttonToView4(_ sender: Any) {
        toView4()
    }
}

