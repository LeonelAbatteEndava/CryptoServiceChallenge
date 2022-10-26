//
//  SplashScreenView.swift
//  MobileCryptoService
//
//  Created by Dario Leonel Abatte on 19/10/2022.
//

import SwiftUI

struct SplashScreenView: View {
    
    var body: some View {
        VStack{
            ZStack{
                Color("SplashScreenBackground")
                    .edgesIgnoringSafeArea(.all)
                Image("SplashScreen")
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
        SplashScreenView()
    }
}
