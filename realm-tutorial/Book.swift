//
//  Book.swift
//  realm-tutorial
//
//  Created by Youngsoo Lim on 4/11/16.
//  Copyright © 2016 example. All rights reserved.
//

import Foundation
import RealmSwift

class Book : Object {
    dynamic var title = ""
    
    override static func primaryKey() -> String? {
        return "title"
    }
}
