//
//  Models.swift
//  App
//
//  Created by Federico Trimboli on 12/08/2018.
//  Copyright © 2018 Federico Trimboli. All rights reserved.
//

import Foundation

// MARK: - Review

struct Review: Codable {
    var id: Int?
    var description: String
    var stars: Double
    var reviewerEmail: String
}

// MARK: - Speaker

struct Speaker: Codable {
    var id: Int?
    var firstName: String
    var lastName: String
    var photoURL: URL
    var githubURL: URL
}

// MARK: - TechTalk

struct TechTalk: Codable {
    var id: Int?
    var title: String
    var description: String
    var speakers: [Speaker]
}

struct TechTalkDetails: Codable {
    var id: Int?
    var title: String
    var description: String
    var speakers: [Speaker]
    var reviews: [Review]
}
