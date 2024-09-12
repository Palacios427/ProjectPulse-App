//
//  QuestsModel.swift
//  ThingsView
//
//  Created by Alumno on 11/09/24.
//

import Foundation

struct Quest : Decodable, Identifiable {
    var id = UUID()
    var name: String
    var level: Int
    var completion: Float // Percentage ranges from 0 to 100
    var completed: Bool // Checks off a completed quest
    var owner: String // who is doing the quest
    var desc: String
    init( name: String = "This Quest",
          level: Int = 0,
          completion: Float = 50,
          completed: Bool = true,
          owner: String = "NONE",
          desc: String = "This is an example quest that does not really need to be completed but you know..."
        ){
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
