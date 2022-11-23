//
//  MarketView.swift
//  MobileCryptoService
//
//  Created by Dario Leonel Abatte on 07/11/2022.
//

import SwiftUI

struct MarketView: View {
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Image("SmallProfilePhoto")
                    Text("Good morning, \nJosé")
                        .font(.custom("Mulish-Bold", size: 20))
                    Spacer()
                }
                Text("Currency Selection")
                    .font(.custom("Mulish-Bold", size: 20))
                CryptoButtons(ButtonText1: "ARS", ButtonText2: "USD")
                HStack{
                    Text("Watchlist")
                        .font(.custom("Mulish-SemiBold", size: 14))
                    Spacer()
                }.padding(.bottom, 8)
                VStack(spacing: 8) {
                    CryptoCard()
                    CryptoCard()
                    CryptoCard()
                    CryptoCard()
                    CryptoCard()
                    Spacer()
                }.padding(.top, 0)
                Spacer()
            }.padding()
            
        }

    }
}

struct MarketView_Previews: PreviewProvider {
    static var previews: some View {
        MarketView()
    }
}
