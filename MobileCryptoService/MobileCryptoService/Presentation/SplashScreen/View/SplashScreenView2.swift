//
//  SplashScreenView2.swift
//  MobileCryptoService
//
//  Created by Dario Leonel Abatte on 25/10/2022.
//

import SwiftUI

struct SplashScreenView2: View {
    
    @State var isActive: Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack{
                ZStack{
                    Color("SplashScreenBackground")
                        .edgesIgnoringSafeArea(.all)
                    Image("SplashScreen")
                }
            }.onAppear() {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView2_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView2()
    }
}
