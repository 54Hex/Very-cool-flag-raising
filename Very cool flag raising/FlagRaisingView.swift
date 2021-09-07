//
//  FlagRaisingView.swift
//  Very cool flag raising
//
//  Created by Conqueriings on 6/9/21.
//

import SwiftUI

struct FlagRaisingView: View {
    
//    @AppStorage("flagOffset") var offset: Double = 20
    @Binding var flag: Flag
    @Binding var offset: Double


    var body: some View {
        VStack {
            HStack(alignment: .bottom, spacing: -10) {
                Rectangle()
                    .cornerRadius(5)
                    .foregroundColor(.black)
                    .frame(width: 15, height: 600)
                
                Text(flag.emoji)
                    .font(.system(size: 100))
                    .offset(x: 0, y: CGFloat(offset))

            }
            
            Button(action: {
                offset -= 10
            }) {
                HStack {
                    Text("Raise Flag")
                        .font(.system(size: 23))
                        .foregroundColor(.black)
                        
                }.padding(10.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 10.0)
                        .stroke(lineWidth: 2.0)
                        .foregroundColor(.black)
                        
                )
            }
            
            Button(action: {
                offset = 20
            }) {
                HStack {
                    Text("Reset")
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                }.padding(10.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 10.0)
                        .stroke(lineWidth: 2.0)
                        .foregroundColor(.black)
                )
            }
        }
    }

    
}

struct FlagRaisingView_Previews: PreviewProvider {
    static var previews: some View {
        FlagRaisingView(flag: .constant(Flag(emoji: "🇸🇬", description: "Singapore")), offset: .constant(20))
    }
}
