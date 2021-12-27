//
//  ContentView.swift
//  OrderApp
//
//  Created by Kristian Mitchell on 12/21/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
                MenuItemListView().tabItem {
                    Image(systemName: "list.bullet")
                    Text("Menu")
                }.tag(1)
                Text("Your Order").tabItem {
                    Image(systemName: "bag")
                    Text("Your Order")
                }.tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
