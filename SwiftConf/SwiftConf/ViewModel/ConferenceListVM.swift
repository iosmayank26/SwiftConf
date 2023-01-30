//
//  ConferenceListVM.swift
//  SwiftConf
//
//  Created by Mayank Gupta on 26/01/23.
//

import Foundation

final class ConferenceListVM {
    
    // MARK: - Variables
    
    var confModel: [ConferenceModel]
    
    // MARK: - Init
    
    init() {
        self.confModel = [
            ConferenceModel(name: "NYSwifty", tentativeDate: "18-19 April,2023", logo: "NYSwifty", image: "NYSwifty", description: "A brand-new Swift/iOS conference in New York City. The conference aims to bring together developers of all experience levels and backgrounds in an inclusive environment to share knowledge and experience from a diverse set of speakers.The event will be kicked off on April 30th with a half day of talks focused on indie development. This is an experiment in replacing what would usually be a day of workshops. The following two days (May 1st and May 2nd) will be a single track focused on Swift and iOS development featuring talks from 14 talented speakers. Come meet and hear in person the voices you know and respect online.", interest: .none),
            
            ConferenceModel(name: "Deep Dish Swift", tentativeDate: "30 April-02 May,2023", logo: "DeepDishSwift", image: "DeepDishSwift", description: "Deep Dish Swift is a brand new conference being held in Chicago in 2023. The conference aims to bring together developers of all experience levels and backgrounds in an inclusive environment to share knowledge and experience from a diverse set of speakers. The event will be kicked off on April 30th with a half day of talks focused on indie development. This is an experiment in replacing what would usually be a day of workshops. The following two days (May 1st and May 2nd) will be a single track focused on Swift and iOS development featuring talks from 14 talented speakers. Come meet and hear in person the voices you know and respect online.", interest: .none),
            
            ConferenceModel(name: "Swift Heroes", tentativeDate: "04-05 May,2023", logo: "SwiftHeroes", image: "SwiftHeroes", description: "The conference aims to bring together developers of all experience levels and backgrounds in an inclusive environment to share knowledge and experience from a diverse set of speakers. The event will be kicked off on April 30th with a half day of talks focused on indie development. This is an experiment in replacing what would usually be a day of workshops. The following two days (May 1st and May 2nd) will be a single track focused on Swift and iOS development featuring talks from 14 talented speakers. Come meet and hear in person the voices you know and respect online.", interest: .none),
            
            ConferenceModel(name: "AppDevCon", tentativeDate: "09-12 May,2023", logo: "AppDevCon", image: "AppDevCon", description: "The conference aims to bring together developers of all experience levels and backgrounds in an inclusive environment to share knowledge and experience from a diverse set of speakers. The event will be kicked off on April 30th with a half day of talks focused on indie development. This is an experiment in replacing what would usually be a day of workshops. The following two days (May 1st and May 2nd) will be a single track focused on Swift and iOS development featuring talks from 14 talented speakers. Come meet and hear in person the voices you know and respect online.", interest: .interested),
            
            ConferenceModel(name: "SwiftPl", tentativeDate: "30-31 May,2023", logo: "SwiftPl", image: "SwiftPl", description: "The conference aims to bring together developers of all experience levels and backgrounds in an inclusive environment to share knowledge and experience from a diverse set of speakers. The event will be kicked off on April 30th with a half day of talks focused on indie development. This is an experiment in replacing what would usually be a day of workshops. The following two days (May 1st and May 2nd) will be a single track focused on Swift and iOS development featuring talks from 14 talented speakers. Come meet and hear in person the voices you know and respect online.", interest: .interested),
            
            ConferenceModel(name: "Swift Conf To", tentativeDate: "10-11 August,2023", logo: "SwiftTo", image: "SwiftTo", description: "The conference aims to bring together developers of all experience levels and backgrounds in an inclusive environment to share knowledge and experience from a diverse set of speakers. The event will be kicked off on April 30th with a half day of talks focused on indie development. This is an experiment in replacing what would usually be a day of workshops. The following two days (May 1st and May 2nd) will be a single track focused on Swift and iOS development featuring talks from 14 talented speakers. Come meet and hear in person the voices you know and respect online.", interest: .none),
            
            ConferenceModel(name: "iOSDevUK Conf", tentativeDate: "04-07 September,2023", logo: "iOSDevUKConf", image: "iOSDevUKConf", description: "The conference aims to bring together developers of all experience levels and backgrounds in an inclusive environment to share knowledge and experience from a diverse set of speakers. The event will be kicked off on April 30th with a half day of talks focused on indie development. This is an experiment in replacing what would usually be a day of workshops. The following two days (May 1st and May 2nd) will be a single track focused on Swift and iOS development featuring talks from 14 talented speakers. Come meet and hear in person the voices you know and respect online.", interest: .none)]
    }
    
    // MARK: - Methods to handle data
    
    func numberOfRowsInSection() -> Int {
        return confModel.count
    }
    
    func cellForRowConferenceData(index: Int) -> ConferenceModel {
        return confModel[index]
    }
}
