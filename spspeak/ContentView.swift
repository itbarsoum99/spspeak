//
//  ContentView.swift
//  spspeak
//
//  Created by Barsoum on 11/24/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var modelData: ModelData
    @State private var selection: Tab = .home
    
    enum Tab {
        case home
        case countries
    }
    
    var body: some View {
        TabView(selection: $selection) {
            Home()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                .tag(Tab.home)
            SPCountriesList()
                .tabItem {
                    Label("Countries", systemImage: "mappin")
                }
                .tag(Tab.countries)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
