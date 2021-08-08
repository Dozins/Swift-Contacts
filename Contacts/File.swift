//
//  File.swift
//  Contacts
//
//  Created by Jayden Lee on 1/8/21.
//

import Foundation

struct Contact: Identifiable {
    
    var name: String
    var job: String
    var rating: Double = 0.0
    var id = UUID()
}
