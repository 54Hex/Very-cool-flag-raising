//
//  ContentView.swift
//  Very cool flag raising
//
//  Created by Conqueriings on 6/9/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var flagDataManager = FlagDataManager()
    
    var body: some View {
        TabView {
            FlagRaisingView(flag: $flagDataManager.flag, offset: $flagDataManager.flagOffset)
                .tabItem {
                    Label("Flag Raising", systemImage: "arrow.up")
                }
            FlagSelectorView(selectedFlag: $flagDataManager.flag)
                .tabItem {
                    Label("Flag Selector", systemImage: "flag.badge.ellipsis")
                }
        }
        .accentColor(.black)
        .onChange(of: flagDataManager.flag) { _ in
            flagDataManager.saveFlag()
        }
        .onChange(of: flagDataManager.flagOffset) { _ in
            flagDataManager.saveFlagOffset()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }

}
