//
//  ContentHeaderView.swift
//  HuliPizza
//
//  Created by Caleb Rudnicki on 3/14/20.
//  Copyright © 2020 Caleb Rudnicki. All rights reserved.
//

import SwiftUI

struct ContentHeaderView: View {
    var body: some View {
        VStack {
            ZStack {
                Image("Surf Board")
                    .resizable()
                    .scaledToFit()
                    .frame(minWidth: 300.0, idealWidth: 500.0, maxWidth: 600.0, minHeight: 75.0, idealHeight: 143.0, maxHeight: 150.0, alignment: .center)
                Text("Huli Pizza Company")
                    .offset(x: -20.0, y: 30.0)
                    .font(Font.custom("Avenir-Black", size: 20.0))
                    .foregroundColor(.white)
            }
        }
    }
}

struct ContentHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ContentHeaderView()
            .environment(\.sizeCategory, .accessibilityExtraExtraLarge)
    }
}
