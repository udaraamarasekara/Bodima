//
//  AuthenticatedViews.swift
//  Bodima
//
//  Created by udara prabath on 2025-06-26.
//

import SwiftUI

struct AuthenticatedViews: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }

            SearchView()
                .tabItem {
                    Image(systemName: "envelope.fill")
                    Text("Inbox")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "location.fill")
                    Text("Locations")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "building.2.fill")
                    Text("Boardings")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "bell.fill")
                    Text("Notifications")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
    }
}


struct SearchView: View {
    var body: some View {
        Text("Search Screen")
    }
}

struct ProfileView: View {
    var body: some View {
        Text("Profile Screen")
    }
}

#Preview {
    AuthenticatedViews()
}
