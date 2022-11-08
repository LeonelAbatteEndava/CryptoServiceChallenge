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
                Image("ImageBTC").frame(maxWidth: .infinity,maxHeight: .infinity).layoutPriority(64)
                VStack{
                    HStack{
                        VStack{
                            
                        }.frame(maxWidth: .infinity,maxHeight: .infinity)
                        VStack{
                            
                        }.frame(maxWidth: .infinity,maxHeight: .infinity).background(.blue)
                    }
                }.frame(maxWidth: .infinity,maxHeight: .infinity).layoutPriority(248)
                    .background(.red)
                Spacer().frame(maxWidth: .infinity,maxHeight: .infinity).layoutPriority(15)
            }.frame(maxWidth: .infinity,maxHeight: .infinity).layoutPriority(60)
            Spacer().frame(maxWidth: .infinity,maxHeight: .infinity).layoutPriority(15)
        }
        .cornerRadius(10) /// make the background rounded
        .overlay( /// apply a rounded border
            RoundedRectangle(cornerRadius: 10)
                .stroke(.white, lineWidth:5)
                .shadow(radius: 10)
        )
        .background(Color.white)
    }
}

struct CryptoCard_Previews: PreviewProvider {
    static var previews: some View {
        CryptoCard().frame(width: 343, height: 88)
    }
}
