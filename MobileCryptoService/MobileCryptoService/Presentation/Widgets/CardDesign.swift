//
//  CardDesign.swift
//  MobileCryptoService
//
//  Created by Cristian Torrado on 12/12/2022.
//

import SwiftUI

struct CardDesign<T: Any, Content: View>: View {
        
    let item: T
    let mapLeadingAvatar: ((T) -> String)
    let mapHeadlineText: ((T) -> String)
    let mapSupportingText: ((T) -> String)
    let mapTraillingSupportedText: ((T) -> String)
    let mapTraillingIconBuilder: ((T) -> Content)

    var body: some View {
            VStack{
                Spacer().frame(maxWidth: .infinity, maxHeight: .infinity).layoutPriority(15)
                HStack{
                    Spacer().layoutPriority(15)
                    Image(mapLeadingAvatar(item))
                        .frame(maxWidth: .infinity,maxHeight: .infinity).layoutPriority(64)
                        .padding()
                        .background(Color("BackgroundColorImage"))
                        .cornerRadius(10)
                    VStack{
                        HStack{
                            VStack(alignment: .leading){
                                Text(mapHeadlineText(item))
                                    .font(.custom("Mulish-Bold", size: 20))
                                Text(mapSupportingText(item))
                                    .font(.custom("Mulish-Regular", size: 16))
                            }.frame(maxWidth: .infinity,maxHeight: .infinity)
                            VStack(alignment: .trailing){
                                Text(mapTraillingSupportedText(item))
                                    .font(.custom("Mulish-Bold", size: 18))
                                    .padding(.bottom, 0)
                                    .padding(.top, 12)
                                mapTraillingIconBuilder(item)
                            }.frame(maxWidth: .infinity,maxHeight: .infinity)
                            //.background(.blue)
                        }
                    }.frame(maxWidth: .infinity,maxHeight: .infinity).layoutPriority(248)
                    //.background(.red)
                    Spacer().frame(maxWidth: .infinity,maxHeight: .infinity).layoutPriority(15)
                }.frame(maxWidth: .infinity,maxHeight: .infinity).layoutPriority(60)
                Spacer().frame(maxWidth: .infinity,maxHeight: .infinity).layoutPriority(15)
            }
            .cornerRadius(10) /// make the background rounded
            .overlay( /// apply a rounded border
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color("BackgroundColor"), lineWidth:0)
                    .shadow(radius: 10)
            )
            .background(.white)
            .cornerRadius(10)
        }
    }


struct CardDesign_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Rectangle()
            .foregroundColor(.black)
            CardDesign<CryptoCurrency,Group>(
                item: CryptoCurrency(image: "ImageBTC", name: "Bitcoin", code: "BTC/BUSD", currency: Currency(name: "Dolar Estadounidense", code:"USD", isSelected: true, symbol: "$"), price: 52000, fluctuation: 10.5),
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
                
            ).frame(width: 343, height: 88)
        }
    }
        
}

