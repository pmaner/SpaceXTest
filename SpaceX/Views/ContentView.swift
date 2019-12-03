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
    @ObservedObject var launchRepository = LaunchRepositoryModel()
    
    var body: some View {
        
        NavigationView {
            MasterView(launchRepository: launchRepository)
                .navigationBarTitle(Text("Launches"))
            DetailView()
        }.navigationViewStyle(DoubleColumnNavigationViewStyle())
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
