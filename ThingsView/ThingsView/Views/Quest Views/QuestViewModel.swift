//
//  StatViewModel.swift
//  ThingsView
//
//  Created by Alumno on 11/09/24.
//


import Foundation

class QuestViewModel: ObservableObject {
    @Published var arrQuests = [Quest]()
    
    init() {
        arrQuests = load("questStats.json")
    }
    
    func load<T: Decodable>(_ filename: String) -> T {
        let data: Data

        guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
            else {
                fatalError("Couldn't find \(filename) in main bundle.")
        }

        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
        }

        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
        }
    }
    
    func save() {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        
        do {
            let data = try encoder.encode(arrQuests)
            guard let file = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first?.appendingPathComponent("questStats.json") else {
                fatalError("Couldn't find documents directory.")
            }
            try data.write(to: file)
        } catch {
            fatalError("Couldn't write data to file:\n\(error)")
        }
    }
}
