//
//  allMenuView.swift
//  orderFood
//
//  Created by habbiche lotfi on 18/11/2022.
//

import SwiftUI

struct allMenuView: View {
    @Binding var menu:Menu
    
    func handler(menu_:Dishe)->(){
        
        for i in 0..<(menu.dishes.count){
            if menu_.isSelected && menu.dishes[i].isSelected && !(menu_.name==menu.dishes[i].name)
            {
                menu.dishes[i].isSelected=false
            }
            
        }
    }
    var body: some View {
        VStack{
            Text("\(menu.dishType)").frame(maxWidth: .infinity,alignment: .leading).padding().fontWeight(.bold)
            ForEach($menu.dishes){
                $dish in dishView(dish: $dish, handler: handler)
            }
            Divider()
        }.padding(EdgeInsets(top: 0, leading: 18.0, bottom: 0, trailing: 18.0))
    }
   
}

struct allMenuView_Previews: PreviewProvider {

	
    static var previews: some View {
                allMenuView(menu:
                .constant(Menu(dishType: "Menu", dishes: [
            Dishe(name: "Pasta", price: 10.5),
            Dishe(name: "Pasta", price: 0.5)
                ])))
    }
}
