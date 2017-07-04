//
//  ViewController.swift
//  FloatingActionButton
//
//  Created by Flavio Fraschetti on 04/07/17.
//  Copyright © 2017 com.nomadhouse. All rights reserved.
//

import UIKit
import KCFloatingActionButton



class ViewController: UIViewController, KCFloatingActionButtonDelegate {

    override func viewDidAppear(_ animated: Bool) {
        layoutFAB()
    }
    
    func layoutFAB() {
        
        
        let fab = KCFloatingActionButton()
        fab.fabDelegate = self
        var items : [KCFloatingActionButtonItem] = [KCFloatingActionButtonItem]()
        fab.buttonColor = UIColor(red:0.12, green:0.12, blue:0.12, alpha:0.7)
        fab.plusColor = UIColor(white: 0.5, alpha: 1.0)
        fab.openAnimationType = .slideLeft
        
        // Item 1
        items.append(KCFloatingActionButtonItem ())
        items[0].buttonColor = UIColor(red:0.12, green:0.12, blue:0.12, alpha:0.7)
        items[0].circleShadowColor = UIColor(red:0.12, green:0.12, blue:0.12, alpha:0.7)
        items[0].title = "Units"
        items[0].size = 54
        items[0].titleColor = UIColor.white
        
        // Item 2
        items.append(KCFloatingActionButtonItem ())
        items[1].buttonColor = UIColor(red:0.12, green:0.12, blue:0.12, alpha:0.7)
        items[1].circleShadowColor = UIColor(red:0.12, green:0.12, blue:0.12, alpha:0.7)
        items[1].title = "Categories"
        items[1].size = 54
        items[1].titleColor = UIColor.white
        
        
        // Item 3
        items.append(KCFloatingActionButtonItem ())
        items[2].buttonColor = UIColor(red:0.12, green:0.12, blue:0.12, alpha:0.7)
        items[2].circleShadowColor = UIColor(red:0.12, green:0.12, blue:0.12, alpha:0.7)
        items[2].title = "Collections"
        items[2].size = 54
        items[2].titleColor = UIColor.white
        
        for item in items{
            
            fab.addItem(item: item)
        }
        
        self.view.addSubview(fab)
        self.view.backgroundColor = UIColor(red:0.39, green:0.38, blue:0.38, alpha:1.0)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

