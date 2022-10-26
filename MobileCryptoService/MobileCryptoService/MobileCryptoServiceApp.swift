//
//  MobileCryptoServiceApp.swift
//  MobileCryptoService
//
//  Created by Dario Leonel Abatte on 12/10/2022.
//

import SwiftUI

@main
struct MobileCryptoServiceApp: App {
    var body: some Scene {
        WindowGroup {
            MainNavigationView(mainNavigationViewModel: MainNavigationViewModel(initialState: InitialState()))
        }
    }
}
