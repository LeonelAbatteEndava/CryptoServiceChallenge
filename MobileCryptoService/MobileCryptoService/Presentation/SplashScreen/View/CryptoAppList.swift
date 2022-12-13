//
//  CryptoCard.swift
//  MobileCryptoService
//
//  Created by Dario Leonel Abatte on 27/10/2022.
//

import SwiftUI

struct CryptoAppList<T, Content: View>: View {
    
    let elementList: Array<T>
    let itemViewBuilder: ((T) -> Content)

    var body: some View {
        List{
            ForEach(0..<elementList.count){ index in
                itemViewBuilder(elementList[index])
            }.listRowBackground(Color("BackgroundColor"))
        }.listStyle(.plain)
            .background(Color("BackgroundColor"))
    }
}
    

struct CryptoCard_Previews: PreviewProvider {
    static var previews: some View {
        CryptoAppList<CryptoCurrency, CardDesign<CryptoCurrency, Group>>(

            elementList: [CryptoCurrency(image: "ImageBTC", name: "Bitcoin", code: "BTC/BUSD", currency: Currency(name: "Dolar Estadounidense", code:"USD", isSelected: true, symbol: "$"), price: 5200, fluctuation: 10.5)],
            itemViewBuilder: { item in
                return CardDesign(
                    item: CryptoCurrency(image: "ImageBTC", name: "Bitcoin", code: "BTC/BUSD", currency: Currency(name: "Dolar Estadounidense", code:"USD", isSelected: true, symbol: "$"), price: 5200, fluctuation: 10.5),
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
            }
        )
    }
}
