//
//  SignUp.swift
//  FitnessBrotsky
//
//  Created by Sergiy Brotsky on 31.03.2022.
//

import SwiftUI

struct SignUp: View {
    @State var firstName = ""
    @State var lastName = ""
    @State var email = ""
    @State var password = ""
    @State var isToggleTerms = false
    var body: some View {
        VStack{
            Group{
                Text("Hey there,")
                Text("Create an Account")
                    .font(.title2).bold()
                
                CutomTextFiled(imageName: "person", placeholderText: "First Name", isSecureField: false, text: $firstName)
                CutomTextFiled(imageName: "person", placeholderText: "Last Name", isSecureField: false, text: $lastName)
                CutomTextFiled(imageName: "envelope", placeholderText: "Email", isSecureField: false, text: $email)
                CutomTextFiled(imageName: "lock", placeholderText: "Password", isSecureField: false, text: $password)
                
                HStack{
                    Image(systemName: isToggleTerms ? "checkmark.square": "square")
                    Text("By continuing you accept our Privacy Policy and Term of Use")
                        .font(.footnote)
                }
                .foregroundColor(.gray)
                .onTapGesture { isToggleTerms.toggle() }
            }
            
            Spacer()
            VStack(spacing: 25){
                CustomBottom(text: "Register")
                
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
                    NavigationLink(destination: SignIn()){
                        Text("Login")
                            .foregroundColor(Color("Purple1"))
                            .fontWeight(.bold)
                    }
                }
            }
          
            
          
            
            
        }
        .padding(.horizontal, 25)
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
