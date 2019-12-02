//
//  SortView.swift
//  SpaceX
//
//  Created by Paul Manser on 30/11/19.
//  Copyright © 2019 Paul Manser. All rights reserved.
//

import SwiftUI

struct SortView: View {
    @ObservedObject var launchRepository: LaunchRepositoryModel
    @State private var sortType = ["Launch Date","Mission Name"]
    
    var body: some View {
        HStack {
            Text("Sort")
            Picker("Sort", selection: $launchRepository.sortIndex) {
                ForEach(0 ..< sortType.count) { index in
                    Text(self.sortType[index]).tag(index)
                }
            }.pickerStyle(SegmentedPickerStyle())
        }

    }
}

//struct SortView_Previews: PreviewProvider {
//    static var previews: some View {
//        @ObservedObject var launchRepository = LaunchRepository()
//
//        return SortView(launchRepository: launchRepository)
//    }
//}
