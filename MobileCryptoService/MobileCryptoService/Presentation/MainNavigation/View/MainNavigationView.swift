//
//  MainNavigationView.swift
//  MobileCryptoService
//
//  Created by Cristian Torrado on 14/10/2022.
//

import Foundation
import SwiftUI

struct MainNavigationView: View  {
    @ObservedObject var mainNavigationViewModel: MainNavigationViewModel
    
    var body: some View {
        
        if (mainNavigationViewModel.state is InitialState || mainNavigationViewModel.state is WaitingState) {
            SplashScreenView()
        
        }
        
/*        switch mainNavigationViewModel.state{
        case is InitialState, is WaitingState:
            SplashScreenView()
        case is HomeState:
            Text("Home")
        default:
            Text("Error")
        }*/
    }
}

struct MainNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MainNavigationView(mainNavigationViewModel: MainNavigationViewModel())
    }
}
