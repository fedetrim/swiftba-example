//
//  TechTalkDetailModels.swift
//  App
//
//  Created by Nahuel Zapata on 8/12/18.
//  Copyright (c) 2018 Federico Trimboli. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import Foundation
import Result
import UIKit

enum TechTalkDetail {

    enum Load {
        struct Request { }

        struct Response {
            var result: Result<TechTalkDetails, NSError>
        }

        struct ViewModel {
            var result: Result<TechTalkDetailViewModel, NSError>
        }
    }

    struct TechTalkDetailViewModel {
        var title: String
        var description: String
        var speakerName: String
        var speakerPhoto: URL
        var speakerGithubUrl: URL
        var reviews: [ReviewViewModel]
    }

    struct ReviewViewModel {
        var description: String
        var stars: Double
        var reviewerEmail: String
    }
}
