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
    var missionName : String
    var launchDate : String
    var launchSite : String
    var launchSuccess : Bool
    var launchYear : String
    var wikipediaLink : String
    
    static func create(fromLaunch: Launch) -> LaunchModel
    {
        let model = LaunchModel(missionName: fromLaunch.missionName ?? "Unknown",
                                launchDate: fromLaunch.launchDateLocal ?? "Unknown",
                                launchSite: (fromLaunch.launchSite?.siteNameLong) ?? "Unknown",
                                launchSuccess: fromLaunch.launchSuccess ?? false,
                                launchYear: fromLaunch.launchYear ?? "Unknown",
                                wikipediaLink: fromLaunch.links?.wikipedia ?? "")
        return model;
    }
}
