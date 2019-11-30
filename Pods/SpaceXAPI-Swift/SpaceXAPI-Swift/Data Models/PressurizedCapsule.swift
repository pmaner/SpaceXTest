//
//  PressurizedCapsule.swift
//  SpaceXAPI-Swift
//
//  Created by Sami Sharafeddine on 5/26/19.
//  Copyright © 2019 Sami Sharafeddine. All rights reserved.
//

import Foundation

public class PressurizedCapsule: Codable {
    
    public let payloadVolume: PayloadVolume?
    
    enum CodingKeys: String, CodingKey {
        case payloadVolume = "payload_volume"
    }
    
    init(payloadVolume: PayloadVolume?) {
        self.payloadVolume = payloadVolume
    }
}
