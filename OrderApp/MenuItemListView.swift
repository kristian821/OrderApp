//
//  MenuItemListView.swift
//  OrderApp
//
//  Created by Kristian Mitchell on 12/21/21.
//

import SwiftUI

struct MenuItemListView: View {
    @StateObject private var menuItemController = MenuItemController()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(menuItemController.items) { item in
                    MenuItemCellView(menuItem: item)
                        .listRowSeparator(.hidden)
                }
            }
            .navigationTitle("Menu")
            .listStyle(.plain)
        }
    }
}

struct MenuItemListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemListView()
    }
}
