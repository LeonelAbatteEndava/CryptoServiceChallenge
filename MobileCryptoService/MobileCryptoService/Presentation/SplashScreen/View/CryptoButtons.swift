//
//  CryptoButtons.swift
//  MobileCryptoService
//
//  Created by Dario Leonel Abatte on 27/10/2022.
//

import SwiftUI

struct CryptoButtons: View {

    var ButtonText1: String
    var ButtonText2: String
    
    var body: some View {
            HStack {
                GreenButton(ButtonText1: ButtonText1)
                    .padding(13)
                WhiteButton(ButtonText2: ButtonText2)
                    .padding(13)
                
            }
    }
}

struct GreenButton: View {
    var ButtonText1: String
    
    var body: some View {
        Button(action: {
            print("Hola")
        }) {
            Text(ButtonText1)
                .bold()
                .foregroundColor(Color("TextColor1"))
        }
        //.frame(width: 120, height: 31)
        .padding()
        .background(
            Color("ButtonColor")
            )
        .cornerRadius(8)
    }
}

struct WhiteButton: View {
    var ButtonText2: String
    
    var body: some View {
        Button(action: { print("HOLA")}){
            Text(ButtonText2)
                .bold()
                .foregroundColor(Color("TextColor2"))
        }
        //.frame(width: 120, height: 31)
        .padding()
        .overlay(RoundedRectangle(cornerRadius: 8)
            .stroke(.green)
        )
    }
}

struct SmallButton: View {
    var ButtonText3: String
    
    var body: some View {
        Button(action: {
            print("Hola")
        }) {
            Text(ButtonText3)
                .bold()
                .foregroundColor(Color("TextColor3"))
                .font(.custom("Mulish-Bold" ,size: 10))
        }
        .frame(width: 25, height: 3)
        .padding()
        .background(
            Color("ButtonColor")
            )
        .cornerRadius(8)
        
    }
}

struct CryptoButtons_Previews: PreviewProvider {
    static var previews: some View {
        CryptoButtons(ButtonText1: "View In Github", ButtonText2: "Dark Button")
    }
}
