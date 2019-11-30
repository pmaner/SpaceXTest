//
//  LaunchModel.swift
//  SpaceX
//
//  Created by Paul Manser on 30/11/19.
//  Copyright © 2019 Paul Manser. All rights reserved.
//

import Foundation
import SpaceXAPI_Swift


struct LaunchModel : Identifiable {
    var id = UUID()
    var name : String
    var date : String
    
    static func create(fromLaunch: Launch) -> LaunchModel
    {
        let model = LaunchModel(name: fromLaunch.missionName!, date: fromLaunch.launchDateLocal!)
        return model;
    }
}
