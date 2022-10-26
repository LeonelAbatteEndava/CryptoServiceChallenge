//
//  MainNavigationViewModel.swift
//  MobileCryptoService
//
//  Created by Cristian Torrado on 14/10/2022.
//

import Foundation


class MainNavigationViewModel: ObservableObject{
    
    @Published var state: MainNavigationState = InitialState()
    
    func onInitialEvent(){
        state = WaitingState()
    }
    
    func onTimerFinished(){
        state = HomeState()
    }
    
}
