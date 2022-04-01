//
//  Welcome.swift
//  FitnessBrotsky
//
//  Created by Sergiy Brotsky on 01.04.2022.
//

import SwiftUI

struct Welcome: View {
    var body: some View {
        VStack(alignment: .center){
            Image("Welcom")
                .resizable()
                .scaledToFit()
                .frame(width: .infinity)
            
            Text("Welcome, Stefani")
                .font(.title2).bold()
            Text("You are all set now, let’s reach your goals together with us")
                .foregroundColor(.gray)
                .font(.footnote)
                .padding(.horizontal, 50)
                .multilineTextAlignment(.center)
            
            Spacer()
            CustomBottom(text: "Go To Home")
                
            
        }
        .padding(25)
    }
}

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Welcome()
    }
}
