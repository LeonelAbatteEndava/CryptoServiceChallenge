//
//  MobileCryptoServiceApp.swift
//  MobileCryptoService
//
//  Created by Dario Leonel Abatte on 12/10/2022.
//

import SwiftUI

@main
struct MobileCryptoServiceApp: App {
    
    @AppStorage("isDarkMode") private var isDarkMode: Bool = false
    
    var body: some Scene {
        WindowGroup {
            MainNavigationView(mainNavigationViewModel: MainNavigationViewModel(initialState: InitialState())).environment(\.colorScheme, isDarkMode ? .dark : .light)
        }
    }
}
