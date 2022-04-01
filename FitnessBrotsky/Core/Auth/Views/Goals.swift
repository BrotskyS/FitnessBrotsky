//
//  Goals.swift
//  FitnessBrotsky
//
//  Created by Sergiy Brotsky on 01.04.2022.
//

import SwiftUI

struct Goals: View {
    var goals = ["1", "2", "3"]
    var body: some View {
        VStack{
            Text("Let’s complete your profile")
                .font(.title2).bold()
            Text("It will help us to know more about you!")
                .foregroundColor(.gray)
                .font(.footnote)
            
            ScrollView(.horizontal){
                HStack{
                    ForEach(goals, id: \.self){item in
                        GeometryReader{ geomery in
                            VStack{
                                
                            }
                            .frame(width: 400, height: 400, alignment: .center)
                            .background(.red)
                        }
                        .frame(width: 400, height: 400)
                    }
                    
                    
                }
                
            }
            
            CustomBottom(text: "Confirm")
                .padding()
        }
    }
}

struct Goals_Previews: PreviewProvider {
    static var previews: some View {
        Goals()
    }
}
