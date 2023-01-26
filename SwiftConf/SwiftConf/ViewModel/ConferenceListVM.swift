//
//  ConferenceListVM.swift
//  SwiftConf
//
//  Created by Mayank Gupta on 26/01/23.
//

import Foundation

final class ConferenceListVM {
    var confModel: [ConferenceListModel]
    
    init() {
        self.confModel = [
            ConferenceListModel(name: "NYSwifty", logo: "NYSwifty", image: "NYSwifty", description: "A brand-new Swift/iOS conference in New York City.", interest: .none),
            
            ConferenceListModel(name: "Deep Dish Swift", logo: "DeepDishSwift", image: "DeepDishSwift", description: "Deep Dish Swift is a brand new conference being held in Chicago in 2023. The conference aims to bring together developers of all experience levels and backgrounds in an inclusive environment to share knowledge and experience from a diverse set of speakers./nThe event will be kicked off on April 30th with a half day of talks focused on indie development. This is an experiment in replacing what would usually be a day of workshops. The following two days (May 1st and May 2nd) will be a single track focused on Swift and iOS development featuring talks from 14 talented speakers. Come meet and hear in person the voices you know and respect online.", interest: .none),
            
            ConferenceListModel(name: "Swift Heroes", logo: "SwiftHeroes", image: "SwiftHeroes", description: "vcsdvcvdsjcvhjsdvhcjs", interest: .none),
            
            ConferenceListModel(name: "AppDevCon", logo: "AppDevCon", image: "AppDevCon", description: "vcsdvcvdsjcvhjsdvhcjs", interest: .interested),
            
            ConferenceListModel(name: "SwiftPl", logo: "SwiftPl", image: "SwiftPl", description: "vcsdvcvdsjcvhjsdvhcjs", interest: .interested),
            
            ConferenceListModel(name: "Swift Conf To", logo: "SwiftTo", image: "SwiftTo", description: "vcsdvcvdsjcvhjsdvhcjs", interest: .none),
            
            ConferenceListModel(name: "iOSDevUK Conf", logo: "iOSDevUKConf", image: "iOSDevUKConf", description: "vcsdvcvdsjcvhjsdvhcjs", interest: .none)]
    }
}
