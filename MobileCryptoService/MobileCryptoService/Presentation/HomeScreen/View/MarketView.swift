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
                }.padding()
                Text("Currency Selection")
                    .font(.custom("Mulish-Bold", size: 20))
                CryptoButtons(ButtonText1: "ARS", ButtonText2: "USD")
                Text("Watchlist")
                    .font(.custom("Mulish-SemiBold", size: 14))
                    .multilineTextAlignment(.leading)
                CryptoCard()
                CryptoCard()
                CryptoCard()
                CryptoCard()
                CryptoCard()
                Spacer()
                    
            }
            
        }

    }
}

struct MarketView_Previews: PreviewProvider {
    static var previews: some View {
        MarketView()
    }
}
