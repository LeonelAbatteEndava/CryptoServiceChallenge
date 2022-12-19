//
//  HomeViewModel.swift
//  MobileCryptoService
//
//  Created by Cristian Torrado on 19/12/2022.
//

import Foundation
import SwiftUI

class HomeViewModel: ObservableObject{
    
    @Published var state: [Theme] = [
        Theme(name: "Light Theme", value: .light, isSelected: true),
        Theme(name: "Dark Theme",  value: .dark, isSelected: false)
    ]
    
    //TODO: Improve to storage the state in user defaults and retrieve in init method the persisted value
    init(){
        (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.windows.first?.overrideUserInterfaceStyle = .light
    }
    
    func onNewThemeSelection(selectedTheme: Theme){
        (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.windows.first?.overrideUserInterfaceStyle =  selectedTheme.value
        var newState = [Theme]()
        for theme in state{
            newState.append(Theme(name: theme.name, value: theme.value, isSelected: theme.name == selectedTheme.name))
        }
        self.state = newState
    }
        
}
