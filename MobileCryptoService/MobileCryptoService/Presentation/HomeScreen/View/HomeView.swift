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
                    CryptoButtons(elementList:
                                    ["Light Theme", "Dark Theme"],
                                      isSelected: {item in
                        return true},
                    getButtonString: {item in
                        return item
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
