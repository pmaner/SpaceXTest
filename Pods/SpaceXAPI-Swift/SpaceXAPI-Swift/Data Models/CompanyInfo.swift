//
//  CompanyInfo.swift
//  SpaceXAPI-Swift
//
//  Created by Sami Sharafeddine on 5/26/19.
//  Copyright © 2019 Sami Sharafeddine. All rights reserved.
//

import Foundation

public class CompanyInfo: Codable {
    
    public let name: String?
    public let founder: String?
    public let founded: SXNumber?
    public let employees: SXNumber?
    public let vehicles: SXNumber?
    public let launchSites: SXNumber?
    public let testSites: SXNumber?
    public let ceo: String?
    public let cto: String?
    public let coo: String?
    public let ctoPropulsion: String?
    public let valuation: SXNumber?
    public let headquarters: Headquarters?
    public let links: Links?
    public let summary: String?
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case founder = "founder"
        case founded = "founded"
        case employees = "employees"
        case vehicles = "vehicles"
        case launchSites = "launch_sites"
        case testSites = "test_sites"
        case ceo = "ceo"
        case cto = "cto"
        case coo = "coo"
        case ctoPropulsion = "cto_propulsion"
        case valuation = "valuation"
        case headquarters = "headquarters"
        case links = "links"
        case summary = "summary"
    }
    
    init(name: String?, founder: String?, founded: SXNumber?, employees: SXNumber?, vehicles: SXNumber?, launchSites: SXNumber?, testSites: SXNumber?, ceo: String?, cto: String?, coo: String?, ctoPropulsion: String?, valuation: SXNumber?, headquarters: Headquarters?, links: Links?, summary: String?) {
        self.name = name
        self.founder = founder
        self.founded = founded
        self.employees = employees
        self.vehicles = vehicles
        self.launchSites = launchSites
        self.testSites = testSites
        self.ceo = ceo
        self.cto = cto
        self.coo = coo
        self.ctoPropulsion = ctoPropulsion
        self.valuation = valuation
        self.headquarters = headquarters
        self.links = links
        self.summary = summary
    }
}
