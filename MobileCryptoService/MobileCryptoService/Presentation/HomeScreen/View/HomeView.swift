//
//  HomeView.swift
//  MobileCryptoService
//
//  Created by Cristian Torrado on 26/10/2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            VStack{
                VStack {
                    Image("SplashScreen")
                        .padding(71)
                    Text("Implemented by" + "\nCristian Torrado, 2022")
                        .font(.custom("Mulish-SemiBold", size: 20))
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                    CryptoButtons<Theme>(elementList:
                                    [ Theme(name: "Light Theme", isSelected: true),
                                      Theme(name: "Dark Theme", isSelected: false)],
                    isSelected: {theme in
                        return theme.isSelected},
                    getButtonString: {theme in
                        return theme.name
                    }, onNewValue: { theme in
                        print("New Theme Selection \(theme)")
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
    }
}
