//
//  HomeViewModel.swift
//  MobileCryptoService
//
//  Created by Cristian Torrado on 19/12/2022.
//

import Foundation
import SwiftUI

class HomeViewModel: ObservableObject{
    
    //Anotation published para crear el Vector "state" que contiene datos de tipo Theme(Domain)
    @Published var state: [Theme] = [
        Theme(name: "Light Theme", value: .light, isSelected: true),
        Theme(name: "Dark Theme",  value: .dark, isSelected: false)
    ]
    
    //TODO: Improve to storage the state in user defaults and retrieve in init method the persisted value
    init(){
        (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.windows.first?.overrideUserInterfaceStyle = .light
    }
    
    func onNewThemeSelection(selectedTheme: Theme){
        // Esta linea genera el estado inicial del tema de la aplicacion
        (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.windows.first?.overrideUserInterfaceStyle =  selectedTheme.value
        //Vector de nuevo estado vacío
        var newState = [Theme]()
        //Completo el vector de "nuevo estado" con un bucle for iterando segun el objeto tipo Theme que se le asigne
        for theme in state{
            newState.append(Theme(name: theme.name, value: theme.value, isSelected: theme.name == selectedTheme.name))
        }
        self.state = newState
    }
        
}
