//
//  CompleteProfile.swift
//  FitnessBrotsky
//
//  Created by Sergiy Brotsky on 01.04.2022.
//

import SwiftUI

struct CompleteProfile: View {
    @State var height = ""
    @State var weight = ""
    @State private var date = Date()
    @State private var isShowDatePiker = false
         
    var body: some View {
        VStack{
            Image("CompleteProfile")
                .resizable()
                .scaledToFit()
                .frame(width: .infinity)
            
            
            Text("Let’s complete your profile")
                .font(.title2).bold()
            Text("It will help us to know more about you!")
                .foregroundColor(.gray)
                .font(.footnote)
            
            Spacer()
            VStack{
                
                CutomTextFiled(imageName: "person.2", placeholderText: "Choose Gender", isSecureField: false, text: $height)
                    .onTapGesture {
                        withAnimation{
                            isShowDatePiker.toggle()
                        }
                    }
                
                CutomTextFiled(imageName: "calendar", placeholderText: "Date of Birth", isSecureField: false, text: $height)
                    .onTapGesture {
                        withAnimation{
                            isShowDatePiker.toggle()
                        }
                    }
                
                if(isShowDatePiker){
                    DatePicker("", selection: $date, displayedComponents: .date)
                        .datePickerStyle(.graphical)
                        
                }
                HStack{
                    CutomTextFiled(imageName: "lineweight", placeholderText: "Password", isSecureField: false, text: $weight)
                    
                    Text("KG")
                        .foregroundColor(.white)
                        .frame(width: 48, height: 48)
                        .background(LinearGradient(colors:  gradients["purple"]!, startPoint: .trailing, endPoint: .leading))
                        .cornerRadius(14)
                }
                
                HStack{
                    CutomTextFiled(imageName: "arrow.up.arrow.down", placeholderText: "Password", isSecureField: false, text: $height)
                    
                    Text("CM")
                        .foregroundColor(.white)
                        .frame(width: 48, height: 48)
                        .background(LinearGradient(colors:  gradients["purple"]!, startPoint: .trailing, endPoint: .leading))
                        .cornerRadius(14)
                }
            }
         
        
           
                

             
            
            
            CustomBottom(text: "Next")
                .padding()
            
        }
        .padding(.horizontal, 25)
    }
    
}

struct CompleteProfile_Previews: PreviewProvider {
    static var previews: some View {
        CompleteProfile()
    }
}
