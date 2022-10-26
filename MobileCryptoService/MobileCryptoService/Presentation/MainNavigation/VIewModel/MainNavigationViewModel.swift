//
//  MainNavigationViewModel.swift
//  MobileCryptoService
//
//  Created by Cristian Torrado on 14/10/2022.
//

import Foundation


class MainNavigationViewModel: ObservableObject{
    
    @Published var state: MainNavigationState

    
    init(initialState: MainNavigationState){
        state = initialState
    }
    
    func onTimerFinished(){
        state = HomeState()
    }
    
}
