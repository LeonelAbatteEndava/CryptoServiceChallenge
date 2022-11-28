//
//  CryptoButtons.swift
//  MobileCryptoService
//
//  Created by Dario Leonel Abatte on 27/10/2022.
//

import SwiftUI


struct CryptoButtons<T>: View {

    var buttonText1: T
    var buttonText2: T
    
    var getButtonString: ((T) -> String)
    
    var body: some View {
            HStack {
                GreenButton(buttonText1: getButtonString(buttonText1))
                    .padding(13)
                WhiteButton(buttonText2: getButtonString(buttonText2))
                    .padding(13)
                
            }
    }
}

struct GreenButton: View {
    var buttonText1: String
    
    var body: some View {
        Button(action: {
            print("Hola")
        }) {
            Text(buttonText1)
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
    var buttonText2: String
    
    var body: some View {
        Button(action: { print("HOLA")}){
            Text(buttonText2)
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
    var buttonText3: String
    
    var body: some View {
        Button(action: {
            print("Hola")
        }) {
            Text(buttonText3)
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
        CryptoButtons<String>(buttonText1: "View In Github", buttonText2: "Dark Button", getButtonString: { item in
                return item
        } )
    }
}
