//
//  ProfileView.swift
//  MobileCryptoService
//
//  Created by Dario Leonel Abatte on 07/11/2022.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack{
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            VStack{

                Image("ProfilePhoto")
                    .padding()
                Text("Jose Perez")
                    .font(.custom("Mulish-SemiBold", size: 25))
                    .bold()
                    .padding()
                Text("33 Years old")
                    .font(.custom("Mulish-SemiBold", size: 25))
                    .padding()
                Text("Engineer")
                    .font(.custom("Mulish-SemiBold", size: 25))
                    .padding()
                Text("CABA, Buenos Aires, Argentina")
                    .font(.custom("Mulish-SemiBold", size: 25))
                    .padding()
                Spacer()
                GreenButton(buttonText: "View in GitHub",onButtonTapped: {
                    //TODO: Send the event.
                })
                Spacer()
            }.padding()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
        ProfileView().preferredColorScheme(.dark)
    }
}
