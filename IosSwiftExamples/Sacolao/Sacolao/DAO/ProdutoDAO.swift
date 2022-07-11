//
//  ProdutoDAO.swift
//  Sacolao
//
//  Created by padrao on 6/12/16.
//  Copyright © 2016 Alexandre Oliveira. All rights reserved.
//

import SQLite

class ProdutoDAO: DAO<Produto> {
    
    override init() {
        super.init()
    }
    
    func insert(model: Produto) throws {
        try super.insert(
            ProdutoHelper.TABLE.insert(or: .Replace,
                ProdutoHelper.NOME          <- model.getNome(),
                ProdutoHelper.QUANTIDADE    <- model.getQuantidade()
            ))
    }
    
    func update(model: Produto) throws {
        try super.update(
            ProdutoHelper.TABLE.update(
                ProdutoHelper.CODIGO        <- model.getCodigo(),
                ProdutoHelper.NOME          <- model.getNome(),
                ProdutoHelper.QUANTIDADE    <- model.getQuantidade()
            ))
    }
    
    func delete(model: Produto) throws {
        let produto = ProdutoHelper.TABLE.filter(ProdutoHelper.CODIGO == model.getCodigo())
        try super.delete(produto.delete())
    }
    
    func all() throws -> Array<Produto> {
        return try super.all(ProdutoHelper.TABLE)
    }
    
    override func rowToEntity(row: Row) throws -> Produto {
        return Produto(codigo:      row[ProdutoHelper.CODIGO],
                       nome:        row[ProdutoHelper.NOME],
                       quantidade:  row[ProdutoHelper.QUANTIDADE])
    }
    
}