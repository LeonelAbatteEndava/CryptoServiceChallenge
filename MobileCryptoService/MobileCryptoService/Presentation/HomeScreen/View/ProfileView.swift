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
                    .padding(.top, 124)
                    .padding(.bottom, 32)
                Text("Jose Perez")
                    .font(.custom("Mulish-SemiBold", size: 25))
                    .bold()
                    .padding(.bottom, 14)
                Text("33 Years old")
                    .font(.custom("Mulish-SemiBold", size: 25))
                    .padding(14)
                Text("Engineer")
                    .font(.custom("Mulish-SemiBold", size: 25))
                    .padding(14)
                Text("CABA, Buenos Aires, Argentina")
                    .font(.custom("Mulish-SemiBold", size: 25))
                    .padding(14)
                GreenButton(ButtonText1: "View in GitHub")
                    .padding(.top, 122)
                    .padding(.bottom,  200)
                Spacer()
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
