//
//  HomeView.swift
//  NewsApp
//
//  Created by Hero Momoh on 20/06/2022.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        
        TabView {
            FeedView()
                .tabItem {
                    Image(systemName: "newspaper")
                    Text("Feed")
                }
            SettingsView()
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("Settings")
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
