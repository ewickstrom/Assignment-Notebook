//
//  Assignments.swift
//  Assignment Notebook
//
//  Created by Ella Wickstrom on 1/21/20.
//  Copyright © 2020 Ella Wickstrom. All rights reserved.
//

import UIKit

class Assignments: Codable {
    var title : String
    var subject : String
    var dueDate : String
    var description : String
    
    init(title: String, subject: String, dueDate: String, description: String) {
       self.title = title
       self.subject = subject
       self.dueDate = dueDate
       self.description = description
    }
}
