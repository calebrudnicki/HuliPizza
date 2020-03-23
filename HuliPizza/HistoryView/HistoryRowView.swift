//
//  HistoryRowView.swift
//  HuliPizza
//
//  Created by Caleb Rudnicki on 3/14/20.
//  Copyright © 2020 Caleb Rudnicki. All rights reserved.
//

import SwiftUI

struct HistoryRowView: View {
    var historyItem: HistoryItem
    
    var body: some View {
        HStack(alignment: .top) {
            Image("\(historyItem.id)_100w")
                .clipShape(Circle())
                .shadow(color: Color.black.opacity(0.5), radius: 10.0, x: 5.0, y: 5.0)
            Text(historyItem.name)
                .font(.title)
            Spacer()
        }
        .overlay(
            Image(systemName: "chevron.right.square")
                .padding()
                .font(.title)
                .foregroundColor(Color("G3")),
            alignment: .trailing
        )
    }
}

struct HistoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryRowView(historyItem: HistoryModel().historyItems[0])
    }
}
