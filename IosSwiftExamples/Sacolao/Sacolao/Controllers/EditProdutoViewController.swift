//
//  EditProdutoViewController.swift
//  Sacolao
//
//  Created by padrao on 7/24/16.
//  Copyright © 2016 Alexandre Oliveira. All rights reserved.
//

import UIKit

class EditProdutoViewController: ProdutoViewController {

    private var produto: Produto!;
    
    @IBOutlet weak var edtCodigo: UITextField!
    @IBOutlet weak var edtProduto: UITextField!
    @IBOutlet weak var edtQuantidade: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        edtCodigo.text = "\(produto.getCodigo())"
        edtProduto.text = produto.getNome()
        edtQuantidade.text = "\(produto.getQuantidade())"
    }

    func setProduto(produto: Produto) {
        self.produto = produto
    }
}
