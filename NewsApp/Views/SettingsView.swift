//
//  SettingsView.swift
//  NewsApp
//
//  Created by Hero Momoh on 21/06/2022.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            Form {
                Section (header: Text("Display"),
                         footer: Text("System setting will override Dark mode and use the current device theme")
                            ) {
                    Toggle(isOn: .constant(true), label: {
                        Text("Dark mode")
                    })
                    Toggle(isOn: .constant(true), label: {
                        Text("Use system settings")
                    })
                }
                
                Section {
                    Link(destination: URL(string: Constants.twitter)!, label: {
                        Label("Follow me on twitter @herocodes_", systemImage: "link")
                    })
                    
                    Link("Contact me via email",destination: URL(string: Constants.email)!)
                    
                    Link("Call me",destination: URL(string: Constants.phone)!)
                        
                        
                }
                .foregroundColor(.black)
                .font(.system(size: 14, weight: .medium))

            }
            .navigationTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
