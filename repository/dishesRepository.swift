//
//  dishesRepository.swift
//  orderFood
//
//  Created by habbiche lotfi on 18/11/2022.
//

import Foundation
class DishesRepository : ObservableObject{
    static let shared = DishesRepository()
    @Published var isMoreSelected=false
    
    
    @Published var dishes=[
        Menu(dishType: "Main dishes", dishes: [
            Dishe(name: "Pasta"	, price: 2.4),
            Dishe(name: "Pizza"    , price: 2.4),
            Dishe(name: "sandwich"    , price: 2.4)
            
        ]),
        Menu(dishType: "Side dishes", dishes: [
            Dishe(name: "Chips"    , price: 2.4),
            Dishe(name: "Salade"    , price: 2.4),
            
        ]),
        Menu(dishType: "Dessert", dishes: [
            Dishe(name: "Fruits"    , price: 2.4),
            Dishe(name: "iceCream"    , price: 4.4),
            
        ])
        
    ]
  
        func getBill()->Float{
            var bill:Float;
            bill=0.0
                for m in dishes{
                    for menu in m.dishes{
                        if menu.isSelected==true{
                            bill=bill+menu.price
                        }
                    }
                }
            return bill
        }
    func getSelectedDishes()->Array<Dishe>{
        var selectedDishes=[Dishe]()
        for m in dishes{
            for menu in m.dishes{
                if menu.isSelected{
                    selectedDishes.append(menu)
                }
            }
        }
        return selectedDishes
        
        
        
    }
    
}
