//
//  Rules.swift
//  Chess club
//
//  Created by Rogier De Ruijter on 22/03/2020.
//  Copyright © 2020 Rogier De Ruijter. All rights reserved.
//

import SwiftUI

struct Rules: View {
    var body: some View {
        List {
            ForEach(ruleData) { rule in
                Text(rule.description)
            }.padding()
        }
    }
}

struct Rules_Previews: PreviewProvider {
    static var previews: some View {
        Rules()
    }
}
