//
//  SignIn.swift
//  FitnessBrotsky
//
//  Created by Sergiy Brotsky on 31.03.2022.
//

import SwiftUI

struct SignIn: View {
    @State var email = ""
    @State var password = ""
    @State var isToggleTerms = false
    var body: some View {
        VStack{
            Group{
                Text("Hey there,")
                Text("Create an Account")
                    .font(.title2).bold()
                
                CutomTextFiled(imageName: "envelope", placeholderText: "Email", isSecureField: false, text: $email)
                CutomTextFiled(imageName: "lock", placeholderText: "Password", isSecureField: false, text: $password)
                
              Text("Forgot your password?")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .underline()
            }
            
            Spacer()
            VStack(spacing: 25){
                NavigationLink(destination: Welcome() .navigationBarHidden(true)){
                    CustomBottom(text: "Register")
                       
                }
             
                
                LabelledDivider(label: "Or", horizontalPadding: 5)
                
                HStack(spacing: 30){
                    Image("Google")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(.gray, lineWidth: 1)
                        )
                    
                    Image("Facebook")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(.gray, lineWidth: 1)
                        )
                }
                
                HStack{
                    Text("Already have an account?")
                    NavigationLink(destination: SignUp().navigationBarHidden(true)){
                        Text("Register")
                            .foregroundColor(Color("Purple1"))
                            .fontWeight(.bold)
                    }
                }
            }
          
            
          
            
            
        }
        .padding(25)
    }
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
