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
        SpaceXAPIClient.shared.getAllLaunches { (launches, error) in
            guard error == nil else {
              // Handle Error.
              return
            }
            // No error, we have data!
            print(launches?[0].details)
            self.launches = launches!.map { LaunchModel.create(fromLaunch: $0) }

            
//            self.launches = [
//                LaunchModel(id: 0, name: "Launch 00", date: Date(timeIntervalSinceReferenceDate: -123456789.0)),
//                LaunchModel(id: 1, name: "Launch 11", date: Date(timeIntervalSinceNow: -123456789.0)),
//                LaunchModel(id: 2, name: "Launch 22", date: Date(timeIntervalSinceNow: -13456789.0)),
//                LaunchModel(id: 3, name: "Launch 33", date: Date(timeIntervalSinceNow: -1256789.0))
//            ]
        }
    }
}
