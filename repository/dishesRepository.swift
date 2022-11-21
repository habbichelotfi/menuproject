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
        Dishe(dishType: "Main dishes", dishes: [
            Dishes(name: "Pasta"	, price: 2.4),
            Dishes(name: "Pasta"    , price: 2.4),
            Dishes(name: "Pasta"    , price: 2.4)
            
        ]
              
             ),
        Dishe(dishType: "Side dishes", dishes: [
            Dishes(name: "Chips"    , price: 2.4),
            Dishes(name: "Salade"    , price: 2.4),
            
        ]),
        Dishe(dishType: "Dessert", dishes: [
            Dishes(name: "Fruits"    , price: 2.4),
            Dishes(name: "iceCream"    , price: 2.4),
            
        ])
        
    ]
    func checkIfMoreThanOneDish(dishes_:Array<Dishes>)->Bool{
        var numberOfDishes=0
        for dish in dishes_{
            if dish.isSelected==true{
                numberOfDishes+=1
            }
            
           
        }
        return numberOfDishes>1
    }
        func getBill()->Float{
            var bill:Float;
            bill=0.0
            do{
                for m in dishes{
                    for menu in m.dishes{
                        if menu.isSelected==true{
                            bill=bill+menu.price
                        }
                    }
                    
                }
            }catch{
//                print("aadffdsdsa")
            }
            
            return bill
        }
    
}
