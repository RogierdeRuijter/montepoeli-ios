//
//  Games.swift
//  Chess club
//
//  Created by Rogier De Ruijter on 22/03/2020.
//  Copyright © 2020 Rogier De Ruijter. All rights reserved.
//

import SwiftUI

struct Games: View {
    var body: some View {
        List {
            HStack {
                Text("White")
                    .font(.headline)
                Spacer()
                Text("Black")
                    .font(.headline)
                Spacer()
                Text("Winner")
                    .font(.headline)
            }.padding()
            
            ForEach(gamesData) { game in
                HStack {
                    Text(game.white)
                    Spacer()
                    Text(game.black)
                    Spacer()
                    Text(game.winner)
                }.padding()
            }
        }
    }
}

struct Games_Previews: PreviewProvider {
    static var previews: some View {
        Games()
    }
}
