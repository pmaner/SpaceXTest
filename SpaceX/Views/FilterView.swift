//
//  FilterView.swift
//  SpaceX
//
//  Created by Paul Manser on 3/12/19.
//  Copyright © 2019 Paul Manser. All rights reserved.
//

import SwiftUI

struct FilterView: View {
    @ObservedObject var launchRepository: LaunchRepositoryModel
    @State private var filterType = ["All","Success","Failure"]
    
    var body: some View {
        HStack {
            Text("Filter")
            Picker("Filter", selection: $launchRepository.filterIndex) {
                ForEach(0 ..< filterType.count) { index in
                    Text(self.filterType[index]).tag(index)
                }
            }.pickerStyle(SegmentedPickerStyle())
        }

    }
}

//struct FilterView_Previews: PreviewProvider {
//    static var previews: some View {
//        FilterView()
//    }
//}
