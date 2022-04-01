//
//  GetStarted.swift
//  FitnessBrotsky
//
//  Created by Sergiy Brotsky on 30.03.2022.
//

import SwiftUI

struct GetStarted: View {
    var body: some View {
        VStack{
            Spacer()
            HStack(alignment: .bottom ){
                Text("Fitnest")
                    .font(.system(size: 36)).bold()
                Text("X")
                    .font(.system(size: 50)).bold()
                    .foregroundColor(Color("Purple1"))
                    .offset(x: -7, y: 5)
                
            }
            Text("Everybody Can Train")
                .foregroundColor(Color("Gray1"))
                .font(.system( size: 18))
            
            Spacer()
            
            NavigationLink(destination: SignUp().navigationBarHidden(true)) {
                CustomBottom(text: "Get Started")
                    .padding()
            }
            
        }
    }
}

struct GetStarted_Previews: PreviewProvider {
    static var previews: some View {
        GetStarted()
    }
}
