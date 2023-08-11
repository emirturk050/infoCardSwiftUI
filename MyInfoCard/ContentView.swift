//
//  ContentView.swift
//  MyInfoCard
//
//  Created by Emir Türk on 22.07.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("emir")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5)
                    )
                
                Text("Emir türk")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                .foregroundColor(.white)
                Text("Jr. iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "0539 048 12 43", imageName: "phone.fill")
                InfoView(text: "emirco@gmail.com", imageName: "envelope.fill")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


