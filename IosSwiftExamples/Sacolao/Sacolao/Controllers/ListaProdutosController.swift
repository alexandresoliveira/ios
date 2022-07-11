//
//  ListaProdutosController.swift
//  Sacolao
//
//  Created by padrao on 6/9/16.
//  Copyright © 2016 Alexandre Oliveira. All rights reserved.
//

import UIKit

class ListaProdutosController: UITableViewController {

    var produtos:Array<Produto>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.produtos = try? ProdutoDAO().all()
        self.tableView.reloadData()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (produtos?.count)!
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let row = indexPath.row
        let produto = produtos![row]
        let cell = UITableViewCell(style: .Subtitle,
                                   reuseIdentifier: nil)
        cell.addGestureRecognizer(detailSelector())
        cell.textLabel?.text = "\(produto.getNome())"
        cell.detailTextLabel?.text = formatNumber(produto.getQuantidade())
        return cell
    }
    
    @IBAction func openAdicionarProduto(sender: UIBarButtonItem) {
        let adicionarProdutoController = self.storyboard?.instantiateViewControllerWithIdentifier("adicionarProdutoSegue")
        self.navigationController!.pushViewController(adicionarProdutoController!, animated: true)
    }
    
    @objc private func detailProduto(gestureReconizer: UILongPressGestureRecognizer) {
        if gestureReconizer.state == UIGestureRecognizerState.Began {
            let ocorrencia = gestureReconizer.view as? UITableViewCell
            let index = tableView.indexPathForCell(ocorrencia!)
            let produto = produtos![(index?.row)!]
            let alert = UIAlertController(title: "Produto",
                                          message: "\(produto.getCodigo()) \n\(produto.getNome()) \n\(formatNumber(produto.getQuantidade()))",
                                          preferredStyle: .Alert)
            let alertAction = UIAlertAction(title: "Ok",
                                            style: .Default,
                                            handler: nil)
            alert.addAction(alertAction)
            self.presentViewController(alert,
                                       animated: true,
                                       completion: nil)
        }
    }
    
    @objc private func editSelector(gestureReconizer: UITapGestureRecognizer) {
        if gestureReconizer.state == UIGestureRecognizerState.Began {
            
        }
    }
    
    private func formatNumber(number: Double) -> String {
        let formater = NSNumberFormatter()
        formater.numberStyle = .DecimalStyle
        formater.currencyDecimalSeparator = ","
        formater.groupingSize = 3
        formater.maximumFractionDigits = 2
        return formater.stringFromNumber(number)!
    }
    
    private func detailSelector() -> UILongPressGestureRecognizer {
        return UILongPressGestureRecognizer(target: self,
                                            action: #selector(ListaProdutosController.detailProduto(_:)))
    }
    
    private func editSelector() -> UITapGestureRecognizer {
        return UITapGestureRecognizer(target: self,
                                      action: #selector(ListaProdutosController.editSelector(_:)))
    }
}
