//
//  Produto.swift
//  Sacolao
//
//  Created by padrao on 6/9/16.
//  Copyright © 2016 Alexandre Oliveira. All rights reserved.
//

class Produto {
    
    private var codigo:Int64
    private var nome:String
    private var quantidade:Double
    
    init(codigo: Int64?, nome: String, quantidade: Double) {
        if let cod = codigo {
            self.codigo = cod
        } else {
            self.codigo = 0
        }
        self.nome = nome
        self.quantidade = quantidade
    }
    
    func getCodigo() -> Int64 {
        return codigo
    }
    
    func getNome() -> String {
        return nome
    }
    
    func getQuantidade() -> Double {
        return quantidade
    }
}