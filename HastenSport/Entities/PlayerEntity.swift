//
//  PlayerEntity.swift
//  HastenSport
//
//  Created by Marcos Suarez on 07/02/2019.
//  Copyright © 2019 Marcos Suarez. All rights reserved.
//

import Foundation

enum TypeSport:String, Codable {
    case football = "Football"
    case tennis = "Tennis"
    case golf = "Golf"
    case formula1 = "Formula 1"
}

struct ListSportEntity:Codable {
    var players:[PlayerEntity]
    var type:String
    var title:TypeSport
}

struct PlayerEntity:Codable {
    var name:String
    var surname: String
    var photo: String
    var birthday: String?
}


