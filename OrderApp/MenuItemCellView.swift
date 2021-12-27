//
//  MenuItemCellView.swift
//  OrderApp
//
//  Created by Kristian Mitchell on 12/21/21.
//

import SwiftUI

struct MenuItemCellView: View {
    var menuItem: MenuItem
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(menuItem.name).font(.title)
                    .padding(.bottom)
                Text(menuItem.description).font(.callout)
            }
            .padding()
            Spacer()
            VStack(alignment: .trailing) {
                Text("$\(menuItem.price)").font(.body)
                    .padding(.bottom)
                Text("\(menuItem.estimatedPrepTime) mins").font(.caption)
            }
            .padding()
        }.padding()
    }
}

struct MenuItemCellView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemCellView(menuItem: MenuItem(id: 1, name: "Spaghetti and Meatballs", description: "Seasoned meatballs on top of freshly-made spaghetti. Served with a robust tomato sauce.", price: 9.0, category: "entrees", estimatedPrepTime: 30))
    }
}
