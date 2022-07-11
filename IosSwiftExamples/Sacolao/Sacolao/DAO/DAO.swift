//
//  DAO.swift
//  Sacolao
//
//  Created by padrao on 6/9/16.
//  Copyright © 2016 Alexandre Oliveira. All rights reserved.
//

import SQLite

class DAO<T> {
    
    private var db: Connection
    
    internal init() {
        self.db = ConnectionDatabase.instance.getDb()!
    }
    
    internal func insert(query: Insert) throws {
        try db.run(query)
    }
    
    internal func update(query: Update) throws {
        try db.run(query)
    }
    
    internal func delete(query: Delete) throws {
        try db.run(query)
    }
    
    internal func all(query: Table) throws -> Array<T> {
        var elements = Array<T>()
        for row in try db.prepare(query) {
            elements.append(try rowToEntity(row))
        }
        return elements
    }
    
    internal func rowToEntity(row: Row) throws -> T {
        throw DAOException.MethodNotImplemented(message: "Método de conversão para entidade não implementado!")
    }
}