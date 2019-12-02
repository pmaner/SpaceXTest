//
//  LaunchGroup.swift
//  SpaceX
//
//  Created by Paul Manser on 2/12/19.
//  Copyright © 2019 Paul Manser. All rights reserved.
//

import Foundation

struct LaunchGroupModel : Identifiable {
    var id = UUID()
    var name : String
    var items : [LaunchModel]
}
