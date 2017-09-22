//
//  ViewController.swift
//  SideMenu
//
//  Created by Appinventiv Technologies on 22/09/17.
//  Copyright © 2017 Appinventiv Technologies. All rights reserved.
//

import UIKit

class ContainerVC: UIViewController {

    @IBOutlet var superView: UIView!
    @IBOutlet weak var sideMenu: UIView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var leadiingConstraint: NSLayoutConstraint!
    var sideMenuToggle =  false
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(toggleShow), name: NSNotification.Name("toggleSideMenuShow"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(toggleHide), name: NSNotification.Name("toggleSideMenuHide"), object: nil)
        
    }

   
    @objc func toggleShow()
    {
       
            sideMenuToggle = false
        UIView.animate(withDuration:0.8, delay: 0.2,usingSpringWithDamping: 0.7, initialSpringVelocity: 0.6,options: .curveEaseInOut,
                           animations:{
               
                                self.sideMenu.transform = CGAffineTransform(translationX:225, y: 1)
                                self.containerView.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
      
            }){(true) in
                
                print("animation")
               
                
            }
        
   }
  

    @objc func toggleHide()
    {
        UIView.animate(withDuration: 0.6, animations: {
            
             self.sideMenu.transform = CGAffineTransform(translationX:-225, y: 1)
             self.containerView.transform = CGAffineTransform(scaleX: 1, y: 1)
            
        })
    
    }
    
}
  



