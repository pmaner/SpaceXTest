//
//  Launch.swift
//  SpaceXAPI-Swift
//
//  Created by Sami Sharafeddine on 5/26/19.
//  Copyright © 2019 Sami Sharafeddine. All rights reserved.
//

import Foundation

public class Launch: Codable {
    
    public let flightNumber: SXNumber?
    public let missionName: String?
    public let missionID: [String]?
    public let launchYear: String?
    public let launchDateUnix: SXNumber?
    public let launchDateUTC: String?
    public let launchDateLocal: String?
    public let isTentative: Bool?
    public let tentativeMaxPrecision: String?
    public let tbd: Bool?
    public let launchWindow: SXNumber?
    public let rocket: LaunchingRocket?
    public let ships: [String]?
    public let telemetry: Telemetry?
    public let launchSite: LaunchSite?
    public let launchSuccess: Bool?
    public let links: Links?
    public let details: String?
    public let upcoming: Bool?
    public let staticFireDateUTC: String?
    public let staticFireDateUnix: SXNumber?
    public let timeline: Timeline?
    
    enum CodingKeys: String, CodingKey {
        case flightNumber = "flight_number"
        case missionName = "mission_name"
        case missionID = "mission_id"
        case launchYear = "launch_year"
        case launchDateUnix = "launch_date_unix"
        case launchDateUTC = "launch_date_utc"
        case launchDateLocal = "launch_date_local"
        case isTentative = "is_tentative"
        case tentativeMaxPrecision = "tentative_max_precision"
        case tbd = "tbd"
        case launchWindow = "launch_window"
        case rocket = "rocket"
        case ships = "ships"
        case telemetry = "telemetry"
        case launchSite = "launch_site"
        case launchSuccess = "launch_success"
        case links = "links"
        case details = "details"
        case upcoming = "upcoming"
        case staticFireDateUTC = "static_fire_date_utc"
        case staticFireDateUnix = "static_fire_date_unix"
        case timeline = "timeline"
    }
    
    init(flightNumber: SXNumber?, missionName: String?, missionID: [String]?, launchYear: String?, launchDateUnix: SXNumber?, launchDateUTC: String?, launchDateLocal: String?, isTentative: Bool?, tentativeMaxPrecision: String?, tbd: Bool?, launchWindow: SXNumber?, rocket: LaunchingRocket?, ships: [String]?, telemetry: Telemetry?, launchSite: LaunchSite?, launchSuccess: Bool?, links: Links?, details: String?, upcoming: Bool?, staticFireDateUTC: String?, staticFireDateUnix: SXNumber?, timeline: Timeline?) {
        self.flightNumber = flightNumber
        self.missionName = missionName
        self.missionID = missionID
        self.launchYear = launchYear
        self.launchDateUnix = launchDateUnix
        self.launchDateUTC = launchDateUTC
        self.launchDateLocal = launchDateLocal
        self.isTentative = isTentative
        self.tentativeMaxPrecision = tentativeMaxPrecision
        self.tbd = tbd
        self.launchWindow = launchWindow
        self.rocket = rocket
        self.ships = ships
        self.telemetry = telemetry
        self.launchSite = launchSite
        self.launchSuccess = launchSuccess
        self.links = links
        self.details = details
        self.upcoming = upcoming
        self.staticFireDateUTC = staticFireDateUTC
        self.staticFireDateUnix = staticFireDateUnix
        self.timeline = timeline
    }
}
