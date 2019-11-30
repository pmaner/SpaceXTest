//
//  Rocket.swift
//  SpaceXAPI-Swift
//
//  Created by Sami Sharafeddine on 5/26/19.
//  Copyright © 2019 Sami Sharafeddine. All rights reserved.
//

import Foundation

public class LaunchingRocket: Codable {
    
    public let rocketID: String?
    public let rocketName: String?
    public let rocketType: String?
    public let firstStage: FirstStage?
    public let secondStage: SecondStage?
    public let fairings: Fairings?
    
    enum CodingKeys: String, CodingKey {
        case rocketID = "rocket_id"
        case rocketName = "rocket_name"
        case rocketType = "rocket_type"
        case firstStage = "first_stage"
        case secondStage = "second_stage"
        case fairings = "fairings"
    }
    
    init(rocketID: String?, rocketName: String?, rocketType: String?, firstStage: FirstStage?, secondStage: SecondStage?, fairings: Fairings?) {
        self.rocketID = rocketID
        self.rocketName = rocketName
        self.rocketType = rocketType
        self.firstStage = firstStage
        self.secondStage = secondStage
        self.fairings = fairings
    }
}
