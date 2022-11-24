//
//  SystemPreferencesModel+TestData.swift
//  SystemPreferencesApp
//
//  Created by Emil Atanasov on 11/24/22.
//

import Foundation

extension SystemPreferencesModel {
    static var instance: SystemPreferencesModel {
        let screenTimeSection = SSection(id: "screenTime", items: [
        Item(icon: "house", text: "Екранно време")])
        
        let generalSection = SSection(id: "general", items: [
        Item(icon: "gear", text: "Основни"),
        Item(icon: "gear", text: "Улеснен достъп"),
        Item(icon: "gear", text: "Поверителност и сигурност")])
        
        let passwordSection = SSection(id: "password", items: [
        Item(icon: "key.fill", text: "Пароли")])
        
        let appsSection = SSection(id: "apps", items: [
        Item(icon: "safari.fill", text: "Safari"),
        Item(icon: "newspaper.fill", text: "News")])
        
        let pencilSection = SSection(id: "pencil", items: [
        Item(icon: "pencil.tip", text: "Apple Pencil")])
        
        return SystemPreferencesModel(profile: Profile(icon: "house", text: "VPN", status: "Не е свързан"), sections: [screenTimeSection, generalSection, pencilSection, passwordSection, appsSection])
    }
}
