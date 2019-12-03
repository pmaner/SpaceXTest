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

class LaunchRepositoryModel : ObservableObject
{
    @Published var launches: [LaunchModel] = []
    @Published var groupedLaunches: [LaunchGroupModel] = []
    @Published var sortIndex : Int = 0 {
        didSet {
            regroup();
        }
    }
    @Published var filterIndex : Int = 0

    init() {
        update()
    }
    
    func regroup() {
        
        var grouped : [String: [LaunchModel]];
        if (self.sortIndex == 0) // launch date
        {
            grouped = LaunchRepositoryModel.groupByYear(launches)
        }
        else // mission name
        {
            grouped = LaunchRepositoryModel.groupByMissionLetter(launches)
        }
        
        var groups : [LaunchGroupModel] = [];
        for (key, contents) in grouped {
            let sortedContents = contents.sorted { $0.missionName < $1.missionName }
            groups.append(LaunchGroupModel(name: key, items: sortedContents));
        }
        groups.sort { $0.name < $1.name };
        
        self.groupedLaunches = groups;
    }
    
    static private func groupByYear(_ launches: [LaunchModel]) -> [String: [LaunchModel]] {
        let empty: [String: [LaunchModel]] = [:]
        return launches.reduce(into: empty) { acc, cur in
            let existing = acc[cur.launchYear] ?? []
            acc[cur.launchYear] = existing + [cur]
        }
    }
    
    static private func groupByMissionLetter(_ launches: [LaunchModel]) -> [String: [LaunchModel]] {
        let empty: [String: [LaunchModel]] = [:]
        return launches.reduce(into: empty) { acc, cur in
            let existing = acc[cur.missionName.first!.description] ?? []
            acc[cur.missionName.first!.description] = existing + [cur]
        }
    }
    
    func update()
    {
        SpaceXAPIClient.shared.getAllLaunches { (launches, error) in
            guard error == nil else {
              // Handle Error.
              return
            }

            self.launches = launches!.map( { l -> LaunchModel in LaunchModel.create(fromLaunch: l) } )
            self.regroup();
        }
    }
}
