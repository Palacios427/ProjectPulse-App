//
//  StatModel.swift
//  ThingsView
//
//  Created by Alumno on 12/09/24.
//


import Foundation
struct Stats : Decodable, Identifiable {
    var name: String
    var proceso: Double
    var maximo : Double
    var id : Int
}
