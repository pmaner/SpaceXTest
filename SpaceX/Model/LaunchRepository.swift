//
//  LaunchRepository.swift
//  SpaceX
//
//  Created by Paul Manser on 1/12/19.
//  Copyright © 2019 Paul Manser. All rights reserved.
//

import Foundation
import Combine
import SpaceXAPI_Swift

class LaunchRepository : ObservableObject
{
    @Published var launches: [LaunchModel] = []
    
    init() {
        update()
    }
    
    func update()
    {
        self.launches = [
            LaunchModel(missionName: "ABC", launchDate: "20/12/2018", launchSite: "Site Name",
                        launchSuccess: true, launchYear: "2018", wikipediaLink: "www.wikipedia.com"),
            LaunchModel(missionName: "DEF", launchDate: "20/12/2019", launchSite: "Site Name",
                        launchSuccess: true, launchYear: "2019", wikipediaLink: "www.wikipedia.com"),
            LaunchModel(missionName: "DDD", launchDate: "20/12/2020", launchSite: "Site Name",
                        launchSuccess: true, launchYear: "2020", wikipediaLink: "www.wikipedia.com"),
            LaunchModel(missionName: "GGG", launchDate: "20/12/2021", launchSite: "Site Name",
                        launchSuccess: true, launchYear: "2021", wikipediaLink: "www.wikipedia.com")
        ]
        
//        SpaceXAPIClient.shared.getAllLaunches { (launches, error) in
//            guard error == nil else {
//              // Handle Error.
//              return
//            }
//            // No error, we have data!
//            //print(launches?[0].details)
//            self.launches = launches!.map( { l -> LaunchModel in LaunchModel.create(fromLaunch: l) } )
//        }
    }
}
