//
//  CryptoCard.swift
//  MobileCryptoService
//
//  Created by Dario Leonel Abatte on 27/10/2022.
//

import SwiftUI

struct CryptoCard<T>: View {
    
    var elementList: Array<T>
    var getCardImage: ((T) -> String)
    var getCardName: ((T) -> String)
    var getCardCode: ((T) -> String)
    var getCardCurrency: ((T) -> Currency)
    var getPrice: ((T) -> Double)
    var getFluctuation: ((T) -> Double)
    
    var body: some View {
        VStack{
            ForEach(0..<elementList.count){ index in
                CardDesign(image: getCardImage(elementList[index]), name: getCardName(elementList[index]), code: getCardCode(elementList[index]), currency: getCardCurrency(elementList[index]),price: getPrice(elementList[index]), fluctuation: getFluctuation(elementList[index]))
            }
        }
    }
}
    
    
    

struct CardDesign: View {
        
    var image: String
        
    var name: String
    
    var code: String

    var currency: Currency
    
    var price: Double
    
    var fluctuation: Double
        
        
    var body: some View {
            VStack{
                Spacer().frame(maxWidth: .infinity, maxHeight: .infinity).layoutPriority(15)
                HStack{
                    Spacer().layoutPriority(15)
                    Image(image)
                        .frame(maxWidth: .infinity,maxHeight: .infinity).layoutPriority(64)
                        .padding()
                        .background(Color("BackgroundColorImage"))
                        .cornerRadius(10)
                    VStack{
                        HStack{
                            VStack(alignment: .leading){
                                Text(code)
                                    .font(.custom("Mulish-Bold", size: 20))
                                Text(name)
                                    .font(.custom("Mulish-Regular", size: 16))
                            }.frame(maxWidth: .infinity,maxHeight: .infinity)
                            VStack(alignment: .trailing){
                                Text(currency.code + " " + String(price))
                                    .font(.custom("Mulish-Bold", size: 18))
                                    .padding(.bottom, 0)
                                    .padding(.top, 12)
                                HStack{
                                    Image(systemName: "arrow.up.right")
                                    Text(String(fluctuation))
                                        .font(.custom("Mulish-Bold", size: 13))
                                }.foregroundColor(Color.white)
                                    .padding(5)
                                    .background(Rectangle().fill(Color("TextColor2")))
                                    .cornerRadius(8)
                                
                                
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


struct CryptoCard_Previews: PreviewProvider {
    static var previews: some View {
        CryptoCard<CryptoCurrency>(

            elementList: [CryptoCurrency(image: "ImageBTC", name: "Bitcoin", code: "BTC/BUSD", currency: Currency(name: "Dolar Estadounidense", code:"USD", isSelected: true, symbol: "$"), price: 52000, fluctuation: 10.5)],
            getCardImage: {CryptoCurrency in return CryptoCurrency.image},
            getCardName: {CryptoCurrency in return CryptoCurrency.name},
            getCardCode: {CryptoCurrency in return CryptoCurrency.code},
            getCardCurrency: {CryptoCurrency in return
                CryptoCurrency.currency},
            getPrice: {CryptoCurrency in return
                CryptoCurrency.price},
            getFluctuation: {CryptoCurrency in return
                CryptoCurrency.fluctuation}
        ).frame(width: 343, height: 88)
    }
}
