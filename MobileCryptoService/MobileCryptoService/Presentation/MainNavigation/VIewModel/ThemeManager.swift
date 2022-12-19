//
//  ThemeManager.swift
//  MobileCryptoService
//
//  Created by Dario Leonel Abatte on 16/12/2022.
//

import SwiftUI

class ThemeManager:ObservableObject {
    @Environment(\.colorScheme) private var colorTheme
    static let shared = ThemeManager()
    
}

