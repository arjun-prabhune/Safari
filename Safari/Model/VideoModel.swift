//
//  VideoModel.swift
//  Safari
//
//  Created by Arjun Prabhune on 9/13/23.
//

import Foundation

struct Video: Codable,  Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
