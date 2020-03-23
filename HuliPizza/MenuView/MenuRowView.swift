//
//  MenuRowView.swift
//  HuliPizza
//
//  Created by Caleb Rudnicki on 3/14/20.
//  Copyright © 2020 Caleb Rudnicki. All rights reserved.
//

import SwiftUI

struct MenuRowView: View {
    var menuItem: MenuItem = testMenuItem
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top, spacing: 15.0) {
                Image("\(menuItem.id)_100w")
                    //                    .cornerRadius(10.0)
                    //                    .border(Color("G4"), width: 4.0)
                    .clipShape(Capsule())
                    .shadow(color: Color.black.opacity(0.5), radius: 5.0, x: 5.0, y: 5.0)
                VStack(alignment: .leading) {
                    Text(menuItem.name)
                        .font(.title)
                        .fontWeight(.light)
                    RatingsView(count: menuItem.rating)
                }
                //                Spacer()
            }
            Text(menuItem.description)
        }
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView(menuItem: MenuModel().menu[0])
    }
}
