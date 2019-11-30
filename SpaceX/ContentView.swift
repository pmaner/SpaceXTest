//
//  ContentView.swift
//  SpaceX
//
//  Created by Paul Manser on 30/11/19.
//  Copyright © 2019 Paul Manser. All rights reserved.
//

import SwiftUI

private let dateFormatter: DateFormatter = {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .medium
    dateFormatter.timeStyle = .medium
    return dateFormatter
}()

struct ContentView: View {
    //@Binding var launches = [LaunchModel]()
    @State private var launches = [
        LaunchModel(id: 0, name: "Launch 0", date: Date(timeIntervalSinceReferenceDate: -123456789.0)),
        LaunchModel(id: 1, name: "Launch 1", date: Date(timeIntervalSinceNow: -123456789.0)),
        LaunchModel(id: 2, name: "Launch 2", date: Date(timeIntervalSinceNow: -13456789.0)),
        LaunchModel(id: 3, name: "Launch 3", date: Date(timeIntervalSinceNow: -1256789.0))
    ]
    @State private var sortIndex = 0
    @State private var sortType = ["Launch Date","Mission Name"]
    
    var body: some View {
        NavigationView {
            MasterView(launches: $launches)
                .navigationBarTitle(Text("Launches"))
                .navigationBarItems(
                    trailing: SortView()
                )
            DetailView()
        }.navigationViewStyle(DoubleColumnNavigationViewStyle())
    }
}

struct MasterView: View {
    @Binding var launches: [LaunchModel]

    var body: some View {
        List {
            ForEach(launches) { launch in
                NavigationLink(
                    destination: DetailView(selectedLaunch: launch)
                ) {
                    Text("\(launch.name)")
                }
            }.onDelete { indices in
                indices.forEach { self.launches.remove(at: $0) }
            }
        }
    }
}

struct DetailView: View {
    var selectedLaunch: LaunchModel?

    var body: some View {
        Group {
            if selectedLaunch != nil {
                Text("\(selectedLaunch!.date, formatter: dateFormatter)")
            } else {
                Text("Detail view content goes here")
            }
        }.navigationBarTitle(Text("Detail"))
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
