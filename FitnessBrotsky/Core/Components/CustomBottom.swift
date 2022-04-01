//
//  CustomBottom.swift
//  FitnessBrotsky
//
//  Created by Sergiy Brotsky on 31.03.2022.
//

import SwiftUI

struct CustomBottom: View {
    let text: String
    var body: some View {
        HStack(alignment: .center){
            Text(text)
                .foregroundColor(.white)
                .font(.system(size: 16)).bold()
            
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: 60,
            alignment: .center
        )
    
        .background(LinearGradient(colors:  gradients["blue"]!, startPoint: .trailing, endPoint: .leading))
        .clipShape(Capsule())
        .shadow(color: Color("Blue1").opacity(0.4), radius: 10, x: 0, y: 10)
    }
}

struct CustomBottom_Previews: PreviewProvider {
    static var previews: some View {
        CustomBottom(text: "Get Started")
    }
}
