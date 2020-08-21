//
//  Model.swift
//  MVVM
//
//  Created by user on 20/08/2020.
//

import Foundation

struct team: Codable {
    let name: String
    let desc: String
    let originOfCountry: String
    let mostImportantTournamentName: String
    let participatedCountries: String
    let famousPerson: String
    let image: String
    
    enum CodingKeys: String, CodingKey {
        case name, desc
        case originOfCountry = "Origin of country"
        case mostImportantTournamentName = "Most important tournament name"
        case participatedCountries = "Participated countries"
        case famousPerson = "famous person"
        case image
    }
}

