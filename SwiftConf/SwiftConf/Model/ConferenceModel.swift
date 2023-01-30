//
//  ConferenceListModel.swift
//  SwiftConf
//
//  Created by Mayank Gupta on 26/01/23.
//

import Foundation

enum Interest {
    case interested
    case notInterested
    case none
}

struct ConferenceModel {
    let name: String
    let tentativeDate: String
    let logo: String
    let image: String
    let description: String
    var interest: Interest
}
