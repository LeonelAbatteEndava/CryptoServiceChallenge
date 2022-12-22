//
//  HomeView.swift
//  MobileCryptoService
//
//  Created by Cristian Torrado on 26/10/2022.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var homeViewModel = HomeViewModel()
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            VStack{
                VStack {
                    Image("HomeScreenImage")
                        .padding(71)
                    Text("Implemented by" + "\nLeonel Abatte, 2022")
                        .font(.custom("Mulish-SemiBold", size: 20))
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                  
                    CryptoButtons<Theme>(
                        elementList: homeViewModel.state,
                        isSelected: { theme in
                            return theme.isSelected
                        },
                        getButtonString: { theme in
                            return theme.name
                        },
                        onNewValue: { theme in
                            homeViewModel.onNewThemeSelection(selectedTheme: theme)
                        })
                    Spacer()
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
        HomeView().preferredColorScheme(.dark)
    }
}
