//
//  SelectedImageView.swift
//  HuliPizza
//
//  Created by Caleb Rudnicki on 3/14/20.
//  Copyright © 2020 Caleb Rudnicki. All rights reserved.
//

import SwiftUI

struct SelectedImageView: View {
    var image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFit()
            .cornerRadius(30.0)
            .shadow(color: Color.black.opacity(0.5), radius: 10.0, x: 5.0, y: 5.0)
    }
}

struct SelectedImageView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedImageView(image: "1_250w")
    }
}
