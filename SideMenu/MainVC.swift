//
//  MainVC.swift
//  SideMenu
//
//  Created by Appinventiv Technologies on 22/09/17.
//  Copyright © 2017 Appinventiv Technologies. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    var value:Int = 0
    @IBOutlet weak var sideMenuButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    
    
    @IBAction func sideMenuTapped(_ sender: UIBarButtonItem) {
   NotificationCenter.default.post(name: NSNotification.Name("toggleSideMenuShow"), object: nil)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
         NotificationCenter.default.post(name: NSNotification.Name("toggleSideMenuHide"), object: nil)
    }
    
   
      
        
        
}

