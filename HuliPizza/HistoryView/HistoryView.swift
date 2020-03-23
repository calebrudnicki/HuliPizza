//
//  HistoryView.swift
//  HuliPizza
//
//  Created by Caleb Rudnicki on 3/14/20.
//  Copyright © 2020 Caleb Rudnicki. All rights reserved.
//

import SwiftUI

struct HistoryView: View {
    @State var imageID: Int = 0
    
    var body: some View {
        VStack {
            PageTitleView(title: "Pizza History")
            SelectedImageView(image: "\(imageID)_250w")
                .padding(5.0)
            HistoryListView(imageID: $imageID)
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HistoryView()
            HistoryView()
                .colorScheme(.dark)
                .background(Color.black)
        }
        
    }
}
