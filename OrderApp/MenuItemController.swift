//
//  MenuController.swift
//  OrderApp
//
//  Created by Kristian Mitchell on 12/21/21.
//

import Foundation
import UIKit
import Combine

class MenuItemController: ObservableObject {
    
//    func fetchMenuItem(completion: @escaping (Result<MenuItem, Error>) -> Void) {
//        let urlComponents = URLComponents(string: "http://localhost:8080/menu")!
//
//        let task = URLSession.shared.dataTask(with: urlComponents.url!) { data, response, error in
//            let decoder = JSONDecoder()
//            if let data = data {
//                do {
//                    let menuItem = try decoder.decode(MenuItem.self, from: data)
//                    completion(.success(menuItem))
//                    print(menuItem)
//                } catch {
//                    completion(.failure(error))
//                    print(error)
//                }
//            } else if let error = error {
//                    completion(.failure(error))
//                    print(error)
//                }
//            }
//        task.resume()
//
//    }
    @Published var items: [MenuItem] = []
    
    func updateMenu() async throws {
        let fetched = try await fetchMenuItems()
        items = fetched
    }
    
    func fetchMenuItems() async throws -> [MenuItem] {
        var menuItems: [MenuItem] = []
        let url = URLRequest(url: URL(string: "http://localhost:8080/menu/")!)
        let (data, response) = try await URLSession.shared.data(for: url)
        if let response = response, let data = data {
            if let item  = try JSONDecoder().decode([MenuItem].self, from: data) {
                menuItems.append(item)
            }
        }
        return menuItems
    }
    enum MenuItemError: Error, LocalizedError {
        case MenuDataMissing
        case invalidServerResponse
    }
}
