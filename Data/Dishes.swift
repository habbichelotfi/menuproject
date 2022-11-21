//
//  Dishes.swift
//  orderFood
//
//  Created by habbiche lotfi on 18/11/2022.
//

import Foundation
struct Dishes: Identifiable{
    let id = UUID()

    var name:String
    var price:Float
    var isSelected=false
}
