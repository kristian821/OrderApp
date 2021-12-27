//
//  Menu.swift
//  OrderApp
//
//  Created by Kristian Mitchell on 12/21/21.
//

import Foundation

struct MenuItem: Identifiable {
    var id: Int
    var name: String
    var description: String
    var price: Double
    var category: String
    var estimatedPrepTime: Int
}

extension MenuItem: Codable {
     enum CodingKeys: String, CodingKey {
        case id
        case name
        case description
        case price
        case category
        case estimatedPrepTime = "estimated_prep_time"
    }
}
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        id = try values.decode(Int.self, forKey: CodingKeys.self)
//        name = try values.decode(String.self, forKey: CodingKeys.self)
//        description = try values.decode(String.self, forKey: CodingKeys.self)
//        price = try values.decode(Double.self, forKey: CodingKeys.self)
//        category = try values.decode(String.self, forKey: CodingKeys.self)
//        estimatedPrepTime = try values.decode(Int.self, forKey: CodingKeys.self)
//    }
struct Categories: Codable {
    var categories: [String]
    
    enum CodingKeys: String, CodingKey {
        case categories
    }
}
