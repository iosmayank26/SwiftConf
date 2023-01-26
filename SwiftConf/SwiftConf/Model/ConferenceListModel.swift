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

struct ConferenceListModel {
    var name: String
    var tentativeDate: String
    var logo: String
    var image: String
    var description: String
    var interest: Interest
}
