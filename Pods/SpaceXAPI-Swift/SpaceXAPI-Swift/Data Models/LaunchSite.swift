//
//  LaunchSite.swift
//  SpaceXAPI-Swift
//
//  Created by Sami Sharafeddine on 5/26/19.
//  Copyright © 2019 Sami Sharafeddine. All rights reserved.
//

import Foundation

public class LaunchSite: Codable {
    
    public let siteID: String?
    public let siteName: String?
    public let siteNameLong: String?
    
    enum CodingKeys: String, CodingKey {
        case siteID = "site_id"
        case siteName = "site_name"
        case siteNameLong = "site_name_long"
    }
    
    init(siteID: String?, siteName: String?, siteNameLong: String?) {
        self.siteID = siteID
        self.siteName = siteName
        self.siteNameLong = siteNameLong
    }
}
