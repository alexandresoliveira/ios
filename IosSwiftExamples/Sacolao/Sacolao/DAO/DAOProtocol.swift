//
//  DAOProtocol.swift
//  Sacolao
//
//  Created by padrao on 6/12/16.
//  Copyright © 2016 Alexandre Oliveira. All rights reserved.
//

import SQLite

protocol DAOProtocol {
    func rowToEntity<T>(row: Row) -> T
    func entityToTable<T>(model: T) -> Table
}