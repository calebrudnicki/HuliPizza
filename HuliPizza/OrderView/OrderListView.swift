//
//  OrderListView.swift
//  HuliPizza
//
//  Created by Caleb Rudnicki on 3/14/20.
//  Copyright © 2020 Caleb Rudnicki. All rights reserved.
//

import SwiftUI

struct OrderListView: View {
    var orderModel: OrderModel
    
    var body: some View {
        VStack {
            List {
                Section(
                    header: ListHeaderView(orderModel: self.orderModel, text: "Your Order")
                ) {
                    ForEach(orderModel.orders) { item in
                        OrderRowView(orderItem: item)
                    }.onDelete(perform: delete)
                }
            }
        }
    }
    
    func delete(at offsets: IndexSet) {
        orderModel.orders.remove(at: offsets.count)
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orderModel: OrderModel())
    }
}
