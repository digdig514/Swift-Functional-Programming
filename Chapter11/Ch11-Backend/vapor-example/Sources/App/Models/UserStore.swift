//
//  UserStore.swift
//  VaporApp
//
//  Created by Diego Souza Sampaio on 17-06-22.
//
//

import Foundation

final class UserStore {
    
    static let sharedInstance = UserStore()
    fileprivate var list: [User] = Array<User>()
    private init() {
    }
    
    func listItems() -> [User] {
        return self.list
    }

    func addOrUpdateItem(item: User) {
 
            self.list.append(item)

    }
    
}
    
