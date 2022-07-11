//
//  ProdutoHelper.swift
//  Sacolao
//
//  Created by padrao on 6/12/16.
//  Copyright © 2016 Alexandre Oliveira. All rights reserved.
//

import SQLite

class ProdutoHelper {
    
    static let TABLE:Table = Table("Produto")
    
    static let CODIGO = Expression<Int64>("codigo")
    static let NOME = Expression<String>("nome")
    static let QUANTIDADE = Expression<Double>("quantidade")
    
    static func createTable() -> String {
        return TABLE.create(ifNotExists: true) {
            t in
            t.column(CODIGO, primaryKey: PrimaryKey.Autoincrement)
            t.column(NOME, unique: true)
            t.column(QUANTIDADE)
        }
    }
}