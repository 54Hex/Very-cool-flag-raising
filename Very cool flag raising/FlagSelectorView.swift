//
//  FlagSelectorView.swift
//  Very cool flag raising
//
//  Created by Conqueriings on 6/9/21.
//

import SwiftUI

struct FlagSelectorView: View {
    
    var flags: [Flag] {
        let flagDataURL = Bundle.main.url(forResource: "FlagData", withExtension: "json")!
        
        let decoder = JSONDecoder()
        let data = try! Data(contentsOf: flagDataURL)
        
        return try! decoder.decode([Flag].self, from: data)
    }
    
    @Binding var selectedFlag: Flag
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                    ForEach(flags) { flag in
                        VStack {
                            Text(flag.emoji)
                                .font(.system(size: 50))
                            Text(flag.description)
                                .font(.caption)
                                .multilineTextAlignment(.center)
                            
                        }
                        .padding()
                        .background(flag == selectedFlag ? Color.blue : Color.clear)
                        .foregroundColor(flag == selectedFlag ? .white : .black)
                        .cornerRadius(8)
                        .onTapGesture {
                            selectedFlag = flag
                        }
                        
                    }
                    
                }
                
            }
            .navigationTitle("kewll flags >:D")
            
        }
        
    }
    
}


struct FlagSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        FlagSelectorView(selectedFlag: .constant(Flag(emoji: "🇸🇬", description: "Singapore")))
        
        
    }
}
