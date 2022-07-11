//
//  ViewController.swift
//  WebServiceExemplo
//
//  Created by padrao on 6/14/16.
//  Copyright © 2016 Alexandre Oliveira. All rights reserved.
//

import UIKit
import Foundation
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var waitWebService: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        waitWebService.hidden = false
        
        let group = dispatch_group_create()
        
        var param = Dictionary<String, String>()
        param.updateValue("teste", forKey: "q")
        dispatch_group_enter(group)
        Alamofire.request(.GET,
                          NSMutableURLRequest(URL: NSURL(fileURLWithPath: "www.google.com")),
                          parameters: param)
                 .validate()
                 .responseJSON {
                    response in
                    print(response.result.value)
                    dispatch_group_leave(group)
                 }
        dispatch_group_notify(group, dispatch_get_main_queue(), {
            self.waitWebService.hidden = true
            print("Finished all requests.")
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

