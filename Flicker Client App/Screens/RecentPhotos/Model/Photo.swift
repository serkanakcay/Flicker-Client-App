//
//  Photo.swift
//  Flicker Client App
//
//  Created by serkan on 25.12.2024.
//

import Foundation


// MARK: - Photo
struct Photo: Codable {
    let id: String?
    let owner: String?
    let secret: String?
    let server: String?
    let farm: Int?
    let title: String?
    let isPublic: Int?
    let isFriend: Int?
    let isFamily: Int?
    let license: String?
    let description: Description?
    let oWidth: String?
    let oHeight: String?
    let dateUpload: String?
    let lastUpdate: String?
    let dateTaken: String?
    let dateTakenGranularity: Int?
    let dateTakenUnknown: String?
    let ownerName: String?
    let iconServer: String?
    let iconFarm: Int?
    let views: String?
    let tags: String?
    let machineTags: String?
    let originalSecret: String?
    let originalFormat: String?
    let latitude: Double?
    let longitude: Double?
    let accuracy: Int?
    let context: Int?
    let media: String?
    let mediaStatus: String?
    let urlSq: String?
    let heightSq: Int?
    let widthSq: Int?
    let urlT: String?
    let heightT: Int?
    let widthT: Int?
    let urlS: String?
    let heightS: Int?
    let widthS: Int?
    let urlQ: String?
    let heightQ: Int?
    let widthQ: Int?
    let urlM: String?
    let heightM: Int?
    let widthM: Int?
    let urlN: String?
    let heightN: Int?
    let widthN: Int?
    let urlZ: String?
    let heightZ: Int?
    let widthZ: Int?
    let urlC: String?
    let heightC: Int?
    let widthC: Int?
    let urlL: String?
    let heightL: Int?
    let widthL: Int?
    let urlO: String?
    let heightO: Int?
    let widthO: Int?
    let pathAlias: String?

    // MARK: - CodingKeys
    enum CodingKeys: String, CodingKey {
        case id, owner, secret, server, farm, title
        case isPublic = "ispublic"
        case isFriend = "isfriend"
        case isFamily = "isfamily"
        case license, description
        case oWidth = "o_width"
        case oHeight = "o_height"
        case dateUpload = "dateupload"
        case lastUpdate = "lastupdate"
        case dateTaken = "datetaken"
        case dateTakenGranularity = "datetakengranularity"
        case dateTakenUnknown = "datetakenunknown"
        case ownerName = "ownername"
        case iconServer = "iconserver"
        case iconFarm = "iconfarm"
        case views, tags
        case machineTags = "machine_tags"
        case originalSecret = "originalsecret"
        case originalFormat = "originalformat"
        case latitude, longitude, accuracy, context, media
        case mediaStatus = "media_status"
        case urlSq = "url_sq"
        case heightSq = "height_sq"
        case widthSq = "width_sq"
        case urlT = "url_t"
        case heightT = "height_t"
        case widthT = "width_t"
        case urlS = "url_s"
        case heightS = "height_s"
        case widthS = "width_s"
        case urlQ = "url_q"
        case heightQ = "height_q"
        case widthQ = "width_q"
        case urlM = "url_m"
        case heightM = "height_m"
        case widthM = "width_m"
        case urlN = "url_n"
        case heightN = "height_n"
        case widthN = "width_n"
        case urlZ = "url_z"
        case heightZ = "height_z"
        case widthZ = "width_z"
        case urlC = "url_c"
        case heightC = "height_c"
        case widthC = "width_c"
        case urlL = "url_l"
        case heightL = "height_l"
        case widthL = "width_l"
        case urlO = "url_o"
        case heightO = "height_o"
        case widthO = "width_o"
        case pathAlias = "pathalias"
    }
}

// MARK: - Description
struct Description: Codable {
    let content: String?

    // MARK: - CodingKeys
    enum CodingKeys: String, CodingKey {
        case content = "_content"
    }
}
