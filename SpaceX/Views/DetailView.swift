//
//  DetailView.swift
//  SpaceX
//
//  Created by Paul Manser on 2/12/19.
//  Copyright © 2019 Paul Manser. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var selectedLaunch: LaunchModel?

    var body: some View {
        Group {
            if selectedLaunch != nil {
                List {
                    Text("Mission: \(selectedLaunch!.missionName)")
                    Text("Date: \(selectedLaunch!.launchDate)")
                    if (selectedLaunch!.launchSuccess) {
                        Text("Launch Successful")
                    } else {
                        Text("Launch Failed")
                    }
                    Text("Rocket: \(selectedLaunch!.rocketDetails)")
                    if (selectedLaunch!.wikipediaLink != "")
                    {
                        Button(action: {
                            let url: NSURL = URL(string: self.selectedLaunch!.wikipediaLink)! as NSURL
                            UIApplication.shared.open(url as URL)
                           }) {
                            Text("\(selectedLaunch!.wikipediaLink)").foregroundColor(Color.blue)
                        }
                    }
                }
            } else {
                Text("Nothing to see here!")
            }
        }.navigationBarTitle(Text("Details"))
    }
}
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
