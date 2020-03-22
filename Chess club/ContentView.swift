//
//  ContentView.swift
//  Chess club
//
//  Created by Rogier De Ruijter on 22/03/2020.
//  Copyright © 2020 Rogier De Ruijter. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            Games()
                .tabItem {
                    VStack {
                        Image("first")
                        Text("Games")
                    }
                }
                .tag(0)
            
            Rules()
                .tabItem {
                    VStack {
                        Image("second")
                        Text("Rules")
                    }
                }
                .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
