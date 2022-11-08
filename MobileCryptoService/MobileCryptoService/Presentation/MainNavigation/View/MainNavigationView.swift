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

        switch mainNavigationViewModel.state{
            case is InitialState:
                SplashScreenView(onAnimationFinished: {
                    mainNavigationViewModel.onTimerFinished()
                })
            case is HomeState:
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                MarketView()
                    .tabItem {
                        Image(systemName: "bag")
                        Text("Market")
                    }
                ProfileView()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Profile")
                    }
            }
            default:
                Text("Error")
        }
    }
}

struct MainNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MainNavigationView(mainNavigationViewModel: MainNavigationViewModel(initialState: InitialState()))
        MainNavigationView(mainNavigationViewModel: MainNavigationViewModel(initialState: HomeState()))
                           
    }
}
