//
//  Connection.swift
//  Sacolao
//
//  Created by padrao on 6/12/16.
//  Copyright © 2016 Alexandre Oliveira. All rights reserved.
//

import SQLite

class ConnectionDatabase {
    
    static var instance = ConnectionDatabase()
    
    private var db: Connection?
    private let PATH = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true).first!
    
    private init() {
        do {
            self.db = try Connection("\(PATH)/SacolaoDb.sqlite3")
            try createTables()
        } catch {
            print("Error on initialize connection \(error)")
        }
    }
    
    private func createTables() throws {
        try db?.run(ProdutoHelper.createTable())
    }
    
    func getDb() -> Connection? {
        return db
    }
    
}