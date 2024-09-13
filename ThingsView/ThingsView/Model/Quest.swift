//
//  QuestsModel.swift
//  ThingsView
//
//  Created by Alumno on 11/09/24.
//

import Foundation
import SwiftUI

@Observable class Quest: Identifiable, Codable {
    var id = UUID() // This is not part of the coding process
    var name: String
    var level: Int
    var completion: Float // Percentage ranges from 0 to 100
    var completed: Bool // Checks off a completed quest
    var owner: String // who is doing the quest
    var desc: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case level
        case completion
        case completed
        case owner
        case desc
    }
    
    // Conform to Decodable and Encodable
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.level = try container.decode(Int.self, forKey: .level)
        self.completion = try container.decode(Float.self, forKey: .completion)
        self.completed = try container.decode(Bool.self, forKey: .completed)
        self.owner = try container.decode(String.self, forKey: .owner)
        self.desc = try container.decode(String.self, forKey: .desc)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(level, forKey: .level)
        try container.encode(completion, forKey: .completion)
        try container.encode(completed, forKey: .completed)
        try container.encode(owner, forKey: .owner)
        try container.encode(desc, forKey: .desc)
    }
    
    // Custom initializer with default values
    init(name: String = "This Quest",
         level: Int = 0,
         completion: Float = 50,
         completed: Bool = true,
         owner: String = "NONE",
         desc: String = "This is an example quest that does not really need to be completed but you know...") {
        self.name = name
        self.level = level
        self.completion = completion
        self.completed = completed
        self.owner = owner
        self.desc = desc
    }
}

extension Quest {
    static var defaultValue: Quest {
        return Quest(
            name: "This Quest",
            level: 0,
            completion: 0,
            completed: false,
            owner: "NONE",
            desc: "This is an example quest that does not really need to be completed but you know..."
        )
    }
}
