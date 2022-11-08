//
//  CryptoCard.swift
//  MobileCryptoService
//
//  Created by Dario Leonel Abatte on 27/10/2022.
//

import SwiftUI

struct CryptoCard: View {
    var body: some View {
        ZStack{
            Rectangle().fill(.white).frame(width: 343, height: 88)
            HStack{
                Image("ImageBTC")
                    .padding(12)
                    .background(Color("BackgroundColor"))
                    .cornerRadius(12)
                VStack{
                    Text("BTC/BUSD")
                    Text("Bitcoin")
                }
                VStack{
                    Text("ARS 54.382,64")
                    SmallButton(ButtonText3: "15,3%")
                }
            }
        }.frame(width: 343, height: 88)
    }
}

struct CryptoCard_Previews: PreviewProvider {
    static var previews: some View {
        CryptoCard()
    }
}
