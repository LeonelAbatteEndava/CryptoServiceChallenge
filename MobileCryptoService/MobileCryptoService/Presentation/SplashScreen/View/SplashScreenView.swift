//
//  SplashScreenView.swift
//  MobileCryptoService
//
//  Created by Dario Leonel Abatte on 19/10/2022.
//

import SwiftUI

struct SplashScreenView: View {

    let onAnimationFinished: ()->Void
    
    var body: some View {
       VStack{
           ZStack{
               Color("SplashScreenBackground")
                   .edgesIgnoringSafeArea(.all)
                    Image("SplashScreen")
            }}
            .onAppear() {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    onAnimationFinished()
                }
            }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView(onAnimationFinished: {
            
        })
        SplashScreenView(onAnimationFinished: {
            
        })
    }
}
