//
//  HeightWithTrunk.swift
//  SpaceXAPI-Swift
//
//  Created by Sami Sharafeddine on 5/26/19.
//  Copyright © 2019 Sami Sharafeddine. All rights reserved.
//

import Foundation

public class HeightWithTrunk: Codable {
    
    public let meters: SXNumber?
    public let feet: SXNumber?
    
    enum CodingKeys: String, CodingKey {
        case meters = "meters"
        case feet = "feet"
    }
    
    init(meters: SXNumber?, feet: SXNumber?) {
        self.meters = meters
        self.feet = feet
    }
}
