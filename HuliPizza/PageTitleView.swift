//
//  PageTitleView.swift
//  HuliPizza
//
//  Created by Caleb Rudnicki on 3/14/20.
//  Copyright © 2020 Caleb Rudnicki. All rights reserved.
//

import SwiftUI

struct PageTitleView: View {
    var title: String
    var isDisplayingOrders: Bool! = nil
    
    var body: some View {
        HStack {
            Spacer()
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.trailing)
        }
        .overlay(
            Image(systemName: "chevron.up.square")
                .rotationEffect(isDisplayingOrders ?? false ? Angle(degrees: 0.0) : Angle(degrees: 180.0))
                .animation(.easeInOut(duration: 0.5))
                .font(.title)
                .foregroundColor(isDisplayingOrders != nil ? Color("G1") : Color.clear)
                .padding(),
            alignment: .leading
        )
        .foregroundColor(Color("G1"))
        .background(Color("G4"))
    }
}

struct PageTitleView_Previews: PreviewProvider {
    static var previews: some View {
        PageTitleView(title: "Order Pizza", isDisplayingOrders: true)
    }
}
