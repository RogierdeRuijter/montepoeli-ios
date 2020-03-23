//
//  ContentView.swift
//  Chess club
//
//  Created by Rogier De Ruijter on 22/03/2020.
//  Copyright © 2020 Rogier De Ruijter. All rights reserved.
//

import SwiftUI
//import RestEssentials

struct HttpBinResponse: Codable {
    let url: String
}

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
        }.gesture(DragGesture().onChanged({ (value) in
                if value.translation.width > 0 {
                    
                    if value.translation.width > 30 {
                        self.selection = 1
                    }
                }
                else {
                    if value.translation.width < -30 {
                        self.selection = 0
                    }
                    else{
                    }
                }
            })
        )
    }
}

// TODO: make this work
//guard let rest = RestController.make(urlString: "http://httpbin.org/get") else {
//    print("Bad URL")
//    return
//}
//
//rest.get(HttpBinResponse.self) { result, httpResponse in
//    do {
//        let response = try result.value() // response is of type HttpBinResponse
//        print(response.url) // "http://httpbin.org/get"
//    } catch {
//        print("Error performing GET: \(error)")
//    }
//}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
