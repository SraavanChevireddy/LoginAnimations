//
//  LoginView.swift
//  LoginAnimations
//
//  Created by Sraavan Chevireddy on 10/19/20.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    @Namespace var animation
    var body: some View {
        VStack{
            
            HStack{
                VStack(alignment: .leading, spacing: 10, content: {
                    Text("Login")
                        .font(.system(size: 40, weight: .heavy))
                        .foregroundColor(.primary)
                    
                    Text("Pleas sign in to continue")
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                })
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            }
            .padding()
            
            CustomTextField(image: "envelope", title: "EMAIL", value: $email,animation: animation)
            CustomTextField(image: "lock", title: "PASSWORD", value: $password,animation: animation)
                .padding(.top,5)
            
            HStack{
                VStack(alignment: .trailing, spacing: 10, content: {
                    Button(action:{
                        print("Pressed on login button")
                    }){
                        HStack{
                            Text("Login")
                                .fontWeight(.heavy)
                                .foregroundColor(.primary)
                            Image(systemName: "arrow.right")
                                .foregroundColor(.primary)
                        }
                        .padding()
                        .background(LinearGradient(gradient: Gradient(colors: [.orange,.pink]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                        .cornerRadius(25)
                    }
                })
            }
            
        }
    }
}


