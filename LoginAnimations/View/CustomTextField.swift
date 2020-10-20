//
//  CustomTextField.swift
//  LoginAnimations
//
//  Created by Sraavan Chevireddy on 10/19/20.
//

import SwiftUI

struct CustomTextField: View {
    
    var image : String
    var title : String
    @Binding var value : String
    var animation : Namespace.ID
    
    var body: some View {
        VStack(spacing: 6){
            HStack(alignment: .bottom){
                Image(systemName: image)
                    .font(.system(size: 22))
                    .foregroundColor(.primary)
                    .frame(width: 35)
                
                VStack(alignment: .leading, spacing: 6, content: {
                    if value != ""{
                        Text(title)
                            .font(.caption)
                            .fontWeight(.heavy)
                            .foregroundColor(.gray)
                            .matchedGeometryEffect(id: title, in: animation)
                    }
                    
                    ZStack(alignment: Alignment(horizontal: .leading, vertical: .center), content: {
                        if value == ""{
                            Text(title)
                                .font(.caption)
                                .fontWeight(.heavy)
                                .foregroundColor(.gray)
                                .matchedGeometryEffect(id: title, in: animation)
                        }
                        
                        TextField("",text: $value)
                    })
                })
            }
            if value == ""{
                Divider()
            }
        }
        .padding(.horizontal)
        .padding(.vertical,10)
        .background(Color("txt").opacity(value != "" ? 1 : 0))
        .cornerRadius(8)
        .shadow(color: Color("sha").opacity(0.1), radius: 5, x: 5, y: 5)
        .shadow(color: Color("sha").opacity(0.05), radius: 5, x: -5, y: -5)
        .padding(.horizontal)
        .padding(.top)
        .animation(.linear)
    }
}


