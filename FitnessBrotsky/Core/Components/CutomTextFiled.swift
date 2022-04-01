//
//  CutomTextFiled.swift
//  FitnessBrotsky
//
//  Created by Sergiy Brotsky on 31.03.2022.
//

import SwiftUI

struct CutomTextFiled: View {
    let imageName: String
    let placeholderText: String
    @State var isSecureField: Bool? = false
    let showeye: Bool? = false
    @Binding var text: String
    var body: some View {
        HStack{
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .foregroundColor(.gray)
            
            if isSecureField ?? false{
                SecureField(placeholderText, text: $text)
            }else{
                TextField(placeholderText, text: $text)
            }
            if showeye ?? false{
                Button{
                    isSecureField?.toggle()
                }label: {
                    Image(systemName: "eye.slash.fill")
                        .foregroundColor(.gray.opacity(0.6))
                }
            }
          
        
        }
        .padding()
        .background(.gray.opacity(0.1))
        .cornerRadius(20)
       
        
    }
}

struct CutomTextFiled_Previews: PreviewProvider {
    static var previews: some View {
        CutomTextFiled(imageName: "envelope", placeholderText: "Email", text: .constant(""))
    }
}
