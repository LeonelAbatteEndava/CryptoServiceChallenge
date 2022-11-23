//
//  CryptoCard.swift
//  MobileCryptoService
//
//  Created by Dario Leonel Abatte on 27/10/2022.
//

import SwiftUI

struct CryptoCard: View {
    var body: some View {
        VStack{
            Spacer().frame(maxWidth: .infinity, maxHeight: .infinity).layoutPriority(15)
            HStack{
                Spacer().layoutPriority(15)
                Image("ImageBTC")
                    .frame(maxWidth: .infinity,maxHeight: .infinity).layoutPriority(64)
                    .padding()
                    .background(Color("BackgroundColorImage"))
                    .cornerRadius(10)
                VStack{
                    HStack{
                        VStack(alignment: .leading){
                            Text("BTC/BUSD")
                                .font(.custom("Mulish-Bold", size: 20))
                            Text("Bitcoin")
                                .font(.custom("Mulish-Regular", size: 16))
                        }.frame(maxWidth: .infinity,maxHeight: .infinity)
                        VStack(alignment: .trailing){
                            

                            Text("USD 52.000,54")
                                .font(.custom("Mulish-Bold", size: 17))
                                .padding(.bottom, 0)
                                .padding(.top, 12)
                            HStack{
                                Image(systemName: "arrow.up.right")
                                Text("15.3%")
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
        CryptoCard().frame(width: 343, height: 88)
    }
}
