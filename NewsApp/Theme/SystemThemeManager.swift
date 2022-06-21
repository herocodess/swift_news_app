//
//  SystemThemeManager.swift
//  NewsApp
//
//  Created by Hero Momoh on 21/06/2022.
//

import Foundation
import UIKit

// Turning the class into a Singleton, so I don't have to keep initializing every single time

class SystemThemeManager {
    
    static let shared = SystemThemeManager()
    
    private init() {} //Hiding the initialization, so you can't initialize the class again
    
    func handleTheme(darkMode: Bool, system: Bool) {
        // handle system
        guard !system else {
            UIApplication.shared.connectedScenes.flatMap{
                ($0 as? UIWindowScene)?.windows ?? []
            }
            .first?.overrideUserInterfaceStyle = .unspecified
            return
        }
        // handle darkmode
        UIApplication.shared.connectedScenes.flatMap{
            ($0 as? UIWindowScene)?.windows ?? []
        }
        .first?.overrideUserInterfaceStyle = darkMode ? .dark : .light
    }
}
