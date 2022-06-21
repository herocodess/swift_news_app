//
//  SettingsView.swift
//  NewsApp
//
//  Created by Hero Momoh on 21/06/2022.
//

import SwiftUI

struct SettingsView: View {
    
    // Using @Binding cause I want to inject the @AppStorage value into this and when a change is made, I want it to reflect in the @AppStorage
    @Binding var darkModeEnabled: Bool
    @Binding var systemThemeEnabled: Bool
    
    var body: some View {
        NavigationView {
            Form {
                Section (header: Text("Display"),
                         footer: Text("System setting will override Dark mode and use the current device theme")
                            ) {
                    Toggle(isOn: $darkModeEnabled, label: {
                        Text("Dark mode")
                    })
                        .onChange(of: darkModeEnabled, perform: {
                            _ in SystemThemeManager.shared.handleTheme(darkMode: darkModeEnabled, system: systemThemeEnabled)
                        })
                    Toggle(isOn: $systemThemeEnabled, label: {
                        Text("Use system settings")
                    })
                        .onChange(of: systemThemeEnabled, perform: {
                            _ in SystemThemeManager.shared.handleTheme(darkMode: darkModeEnabled, system: systemThemeEnabled)
                        })
                }
                
                Section {
                    Link(destination: URL(string: Constants.twitter)!, label: {
                        Label("Follow me on twitter @herocodes_", systemImage: "link")
                    })
                    
                    Link("Contact me via email",destination: URL(string: Constants.email)!)
                    
                    Link("Call me",destination: URL(string: Constants.phone)!)
                        
                        
                }
                .foregroundColor(Theme.textColor)
                .font(.system(size: 14, weight: .medium))

            }
            .navigationTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(darkModeEnabled: .constant(false), systemThemeEnabled: .constant(false))
    }
}
