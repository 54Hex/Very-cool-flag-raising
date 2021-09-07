//
//  Flag.swift
//  Very cool flag raising
//
//  Created by Conqueriings on 6/9/21.
//

import Foundation

struct Flag: Identifiable, Codable, Equatable {
    var id: String { emoji }
    
    var emoji: String
    var description: String
}
