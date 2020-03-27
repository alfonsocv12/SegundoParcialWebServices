//
//  Student.swift
//  SegundoParcialWebServices
//
//  Created by apple on 3/26/20.
//  Copyright © 2020 apple. All rights reserved.
//

import Foundation

struct Student: Codable {
    var name: String?
    var imgURL: String?
    
    enum CodingKeys: String, CodingKey {
        case name
        case imgURL = "img_url"
    }
}
