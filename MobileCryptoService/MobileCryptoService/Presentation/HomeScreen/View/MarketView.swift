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
                CryptoAppList<CryptoCurrency, CardDesign<CryptoCurrency, Group>>(
                    elementList: [CryptoCurrency(image: "ImageBTC", name: "Bitcoin", code: "BTC/BUSD", currency: Currency(name: "Dolar Estadounidense", code:"USD", isSelected: true, symbol: "$"), price: 52000, fluctuation: 10.5),
                                  CryptoCurrency(image: "ImageBTC", name: "Bitcoin", code: "BTC/BUSD", currency: Currency(name: "Dolar Estadounidense", code:"USD", isSelected: true, symbol: "$"), price: 52000, fluctuation: 10.5),                                   CryptoCurrency(image: "ImageBTC", name: "Bitcoin", code: "BTC/BUSD", currency: Currency(name: "Dolar Estadounidense", code:"USD", isSelected: true, symbol: "$"), price: 52000, fluctuation: 10.5),                                   CryptoCurrency(image: "ImageBTC", name: "Bitcoin", code: "BTC/BUSD", currency: Currency(name: "Dolar Estadounidense", code:"USD", isSelected: true, symbol: "$"), price: 52000, fluctuation: 10.5),                                   CryptoCurrency(image: "ImageBTC", name: "Bitcoin", code: "BTC/BUSD", currency: Currency(name: "Dolar Estadounidense", code:"USD", isSelected: true, symbol: "$"), price: 52000, fluctuation: 10.5),],
                    itemViewBuilder: { item in
                        return CardDesign(
                            item: item,
                            mapLeadingAvatar: { item in
                                return item.image
                            },
                            mapHeadlineText: {item in
                                return item.code
                            },
                            mapSupportingText: { item in
                                return item.name
                            },
                            mapTraillingSupportedText: { item in
                                return "\(item.currency.code) \(item.price)"
                            },
                            mapTraillingIconBuilder: { item in
                                return Group{
                                    HStack{
                                        Image(systemName: "arrow.up.right")
                                        Text(String(item.fluctuation))
                                            .font(.custom("Mulish-Bold", size: 13))
                                    }.foregroundColor(Color.white)
                                        .padding(5)
                                        .background(Rectangle()
                                            .fill(Color("TextColor2")))
                                        .cornerRadius(8)
                                }
                                
                            }
                        )
                    })
            }.padding()
        }
    }
}

struct MarketView_Previews: PreviewProvider {
    static var previews: some View {
        MarketView()
    }
}
