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
                CryptoButtons<Currency>(
                    elementList: [
                        Currency(name: "Peso Argentino", code:"ARS", isSelected: true, symbol: "$"),
                        Currency(name: "Dolar Estadounidense", code:"USD", isSelected: false, symbol: "$")],
                    isSelected:{ currency in
                        return currency.isSelected
                    },
                    getButtonString: { currency in
                        return currency.code
                    },
                    onNewValue: { currency in
                        print("On New Currency Selected: \(currency)")
                    })
                HStack{
                    Text("Watchlist")
                        .font(.custom("Mulish-SemiBold", size: 14))
                    Spacer()
                }
                .padding(.bottom, 8)
                VStack(spacing: 8) {
                    ForEach(0..<5) { item in
                        CryptoCard<CryptoCurrency>(elementList: [CryptoCurrency(image: "ImageBTC", name: "Bitcoin", code: "BTC/BUSD", currency: Currency(name: "Dolar Estadounidense", code:"USD", isSelected: true, symbol: "$"), price: 52000, fluctuation: 10.5)],
                                                   getCardImage: {CryptoCurrency in return CryptoCurrency.image},
                                                   getCardName: {CryptoCurrency in return CryptoCurrency.name},
                                                   getCardCode: {CryptoCurrency in return CryptoCurrency.code},
                                                   getCardCurrency: {CryptoCurrency in return
                            CryptoCurrency.currency},
                                                   getPrice: {CryptoCurrency in return
                            CryptoCurrency.price},
                                                   getFluctuation: {CryptoCurrency in return
                            CryptoCurrency.fluctuation})
                    }
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
