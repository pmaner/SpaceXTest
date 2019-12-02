//
//  MasterView.swift
//  SpaceX
//
//  Created by Paul Manser on 2/12/19.
//  Copyright © 2019 Paul Manser. All rights reserved.
//

import SwiftUI

struct MasterView: View {
    @Binding var groupedLaunches: [LaunchGroupModel]

    var body: some View {
        List {
            ForEach(groupedLaunches) { grp in
                Section(header: Text(grp.name))
                {
                    ForEach(grp.items) { launch in
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


