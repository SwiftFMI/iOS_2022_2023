//
//  SystemPreferenceModel.swift
//  SystemPreferencesApp
//
//  Created by Emil Atanasov on 11/17/22.
//

import Foundation

protocol SystemPreferencesItem: Identifiable {
    var icon: String { get }
    var text: String { get }
    var id: String { get }
}

protocol SystemPreferenceSection: Identifiable {
    var id: String { get }
    var items: [Item] { get }
}

struct Item: SystemPreferencesItem {
    var icon: String
    var text: String
    var id: String {
        text
    }
}

struct SSection: SystemPreferenceSection {
    var id: String
    var items: [Item]
}

/// A profile class, that describes the profile item.
struct Profile {
    var icon: String
    var text: String
    var status: String
}

class SystemPreferencesModel: ObservableObject {
    @Published var profile: Profile
    
    @Published var sections: [SSection] = []
    
    init(profile: Profile, sections: [SSection]) {
        self.profile = profile
        self.sections = sections
    }
}


