//
//  CryptoButtons.swift
//  MobileCryptoService
//
//  Created by Dario Leonel Abatte on 27/10/2022.
//

import SwiftUI


struct CryptoButtons<T>: View {

    
    struct ChipElement<T>{
        var item: T
        var uuid = UUID()
    }

    var elementList: Array<T>
    var isSelected: ((T) -> Bool)
    var getButtonString: ((T) -> String)
    
    var body: some View {
            HStack {
                ForEach(0..<elementList.count){ index in
                    if(isSelected(elementList[index])){
                        GreenButton(buttonText: getButtonString(elementList[index]))
                    }else{
                        WhiteButton(buttonText: getButtonString(elementList[index]))
                    }
                }
            }
        }
}

// TODO: Please rewrite it to define only one button widget that change color by chenge isSelected attribute
// TODO: Please expose the button action as a lambda function in order to propagate the action to the CryptoButtons widget and can perfoms action when the status change
struct GreenButton: View {
    var buttonText: String
    
    
    var body: some View {
        Button(action: {
            print("Hola")
        }) {
            Text(buttonText)
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
    var buttonText: String
    
    var body: some View {
        Button(action: { print("HOLA")}){
            Text(buttonText)
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

struct Currency{
    var nambe: String
    var code: String
    var isSelected: Bool
    var symbol: String
}


struct CryptoButtons_Previews: PreviewProvider {
    static var previews: some View {
        CryptoButtons<Currency>(
            elementList: [
                Currency(nambe: "Peso Argentino", code:"ARS", isSelected: false, symbol: "$"),
                Currency(nambe: "Dolar Estadounidense", code:"USD", isSelected: false, symbol: "$")],
            isSelected: { item in
                return item.isSelected
            },
            getButtonString: { item in
                return item.code
        })
    }
}
