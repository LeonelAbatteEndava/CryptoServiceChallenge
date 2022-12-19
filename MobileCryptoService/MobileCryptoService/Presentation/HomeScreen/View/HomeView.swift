//
//  HomeView.swift
//  MobileCryptoService
//
//  Created by Cristian Torrado on 26/10/2022.
//

import SwiftUI

struct HomeView: View {
    
    @AppStorage("isDarkMode") private var isDarkMode: Bool = false
    
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
                    HStack{
                        CryptoButtons<Theme>(elementList:
                                        [ Theme(name: "Light Theme", isSelected: true)],
                        isSelected: {theme in
                            return theme.isSelected},
                        getButtonString: {theme in
                            return theme.name
                        }, onNewValue: { theme in
                            if(isDarkMode == true) {
                                isDarkMode.toggle()
                                print(isDarkMode)
                            }

                        })
                        CryptoButtons<Theme>(elementList:
                                        [Theme(name: "Dark Theme", isSelected: false)],
                        isSelected: {theme in
                            return theme.isSelected},
                        getButtonString: {theme in
                            return theme.name
                        }, onNewValue: { theme in
                            if(isDarkMode == false) {
                                isDarkMode.toggle()
                                print(isDarkMode)
                            }

                        })
                    }

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
