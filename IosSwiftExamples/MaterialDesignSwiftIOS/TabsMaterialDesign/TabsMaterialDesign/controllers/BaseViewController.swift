//
//  BaseViewController.swift
//  TabsMaterialDesign
//
//  Created by Desenvolvedor on 19/11/17.
//  Copyright © 2017 alexandreoliveira.eti.br. All rights reserved.
//

import UIKit

enum TitleAlign {
    case left
    case center
    case right
}

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        loadNavConfig()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension BaseViewController {
    
    func alignTitle(_ direction: TitleAlign = .center) {
        switch direction {
        case .left:
            print("Left")
        case .right:
            print("Right")
        case .center:
            print("Center")
        }
    }
    
    fileprivate func loadNavConfig() {
        guard let nav = navigationController else {
            return
        }
        // Background color
        nav.navigationBar.barTintColor = UIColor(red:0.25, green:0.32, blue:0.71, alpha:1.0)
        
        // Title color
        nav.navigationBar.titleTextAttributes = [
            NSAttributedStringKey.foregroundColor: UIColor(red:1.00, green:0.92, blue:0.23, alpha:1.0)
        ]
    }
}
