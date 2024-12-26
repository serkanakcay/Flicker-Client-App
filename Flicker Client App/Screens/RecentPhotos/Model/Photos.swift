//
//  Photos.swift
//  Flicker Client App
//
//  Created by serkan on 25.12.2024.
//

import Foundation

struct Photos: Codable{
    let page: Int?
    let pages: Int?
    let perpage: Int?
    let total: Int?
    var photo: [Photo]?
}
