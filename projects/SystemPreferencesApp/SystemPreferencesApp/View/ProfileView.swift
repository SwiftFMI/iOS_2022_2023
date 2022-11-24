//
//  ProfileView.swift
//  SystemPreferencesApp
//
//  Created by Emil Atanasov on 11/24/22.
//

import SwiftUI

struct ProfileView: View {
    var profile: Profile
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 50, height: 50)
                Spacer()
                VStack(alignment: .leading) {
                    Text("Влезте във вашия iPhone")
                        .foregroundColor(.blue)
                    Text("Настройте iCould, App Store и други услуги.")
                }
                
            }
            Divider()
                .padding(.leading, 100)
            NavigationLink(destination: EmptyView()) {
                HStack {
                    Image(systemName: profile.icon)
                    Text(profile.text)
                    Spacer()
                    Text(profile.status)
                        .foregroundColor(Color.gray)
                    
                }
            }
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(profile: Profile(icon: "house", text: "VPN", status: "Свързан"))
    }
}
