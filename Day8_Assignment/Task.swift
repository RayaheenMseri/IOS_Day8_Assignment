//
//  Task.swift
//  Day8_Assignment
//
//  Created by Taibah Valley Academy on 11/09/1446 AH.
//


import SwiftUI

class Task: Identifiable ,ObservableObject{
    let id = UUID()
    let title: String
    let description: String
    var isCompleted: Bool
    
    init(title: String, description: String, isCompleted: Bool) {
        self.title = title
        self.description = description
        self.isCompleted = isCompleted
    }
    
}
