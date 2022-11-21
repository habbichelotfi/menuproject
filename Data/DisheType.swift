//
//  DisheType.swift
//  orderFood
//
//  Created by habbiche lotfi on 18/11/2022.
//

import Foundation
struct Dishe : Identifiable{
    let id = UUID()
    var numberOfDishes:Bool=false
    var dishType:String
    var dishes:Array<Dishes>
}
