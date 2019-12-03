//
//  MasterView.swift
//  SpaceX
//
//  Created by Paul Manser on 2/12/19.
//  Copyright © 2019 Paul Manser. All rights reserved.
//

import SwiftUI

struct MasterView: View {
    @ObservedObject var launchRepository: LaunchRepositoryModel
    
    var body: some View {
        List {
            Section(header: Text("Options"))
            {
                SortView(launchRepository: launchRepository)
                FilterView(launchRepository: launchRepository)
            }
            ForEach(launchRepository.groupedLaunches) { grp in
                Section(header: Text(grp.name))
                {
                    ForEach(grp.items) { launch in
                        if ((self.launchRepository.filterIndex == 0) ||
                            ((self.launchRepository.filterIndex == 1) && launch.launchSuccess) ||
                            ((self.launchRepository.filterIndex == 2) && !launch.launchSuccess))
                        {
                            NavigationLink(
                                destination: DetailView(selectedLaunch: launch)
                            ) {
                                Text("\(launch.missionName)")
                            }
                        }
                    }
                }
            }
        }
    }
}


