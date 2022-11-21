//
//  allMenuView.swift
//  orderFood
//
//  Created by habbiche lotfi on 18/11/2022.
//

import SwiftUI

struct allMenuView: View {
    @Binding var menu:Dishe
    @Binding var manyAreSelected:Bool
    var body: some View {
        VStack{
            Text("\(menu.dishType)").frame(maxWidth: .infinity,alignment: .leading).padding().fontWeight(.bold)
            ForEach($menu.dishes){
                $dish in dishView(dish: $dish)
            }.alert(isPresented: $menu.numberOfDishes) {
                Alert(title: Text("Important message"), message: Text("Wear sunscreen"), dismissButton: .default(Text("Got it!")))
            }
        }
    }
    func getif(){
        
    }
}

struct allMenuView_Previews: PreviewProvider {
    static var previews: some View {
        allMenuView(menu:
                .constant(Dishe(dishType: "Menu", dishes: [
            Dishes(name: "Pasta", price: 10.5),
            Dishes(name: "Pasta", price: 0.5)
                ])),manyAreSelected: .constant(false))
    }
}
