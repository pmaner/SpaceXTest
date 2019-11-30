//
//  HistoryEvent.swift
//  SpaceXAPI-Swift
//
//  Created by Sami Sharafeddine on 5/26/19.
//  Copyright © 2019 Sami Sharafeddine. All rights reserved.
//

import Foundation

public class HistoryEvent: Codable {
    
    public let id: SXNumber?
    public let title: String?
    public let eventDateUTC: String?
    public let eventDateUnix: SXNumber?
    public let flightNumber: SXNumber?
    public let details: String?
    public let links: Links?
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case title = "title"
        case eventDateUTC = "event_date_utc"
        case eventDateUnix = "event_date_unix"
        case flightNumber = "flight_number"
        case details = "details"
        case links = "links"
    }
    
    init(id: SXNumber?, title: String?, eventDateUTC: String?, eventDateUnix: SXNumber?, flightNumber: SXNumber?, details: String?, links: Links?) {
        self.id = id
        self.title = title
        self.eventDateUTC = eventDateUTC
        self.eventDateUnix = eventDateUnix
        self.flightNumber = flightNumber
        self.details = details
        self.links = links
    }
}
