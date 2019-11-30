//
//  Position.swift
//  SpaceXAPI-Swift
//
//  Created by Sami Sharafeddine on 5/27/19.
//  Copyright © 2019 Sami Sharafeddine. All rights reserved.
//

import Foundation

public class Position: Codable {
    
    public let latitude: SXNumber?
    public let longitude: SXNumber?
    
    enum CodingKeys: String, CodingKey {
        case latitude = "latitude"
        case longitude = "longitude"
    }
    
    init(latitude: SXNumber?, longitude: SXNumber?) {
        self.latitude = latitude
        self.longitude = longitude
    }
}
