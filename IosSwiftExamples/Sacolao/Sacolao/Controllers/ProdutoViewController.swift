//
//  ProdutoViewController.swift
//  Sacolao
//
//  Created by padrao on 7/24/16.
//  Copyright © 2016 Alexandre Oliveira. All rights reserved.
//

import UIKit

class ProdutoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func adicionarProduto(produto: Produto) throws {
        
    }
    
    func atualizarProduto(produto: Produto) throws {
        
    }
    
    func isValidDecimalNumber(number: String) -> Bool {
        do {
            let regex = try NSRegularExpression(pattern: "\\d+(\\.\\d{1,2})$",
                                                options: .AllowCommentsAndWhitespace)
            let matches = regex.matchesInString(number,
                                                options: .Anchored,
                                                range: NSRange(location: 0, length: number.characters.count))
            return matches.count > 0;
        } catch {
            return false
        }
    }
}
