//
//  dishView.swift
//  orderFood
//
//  Created by habbiche lotfi on 18/11/2022.
//

import SwiftUI

struct dishView: View {
    @Binding var dish:Dishe
    @State var doesSelected=false
    var handler:(Dishe)->()
    
    var body: some View {
        let priceFormatted = String(format: "%.2f", dish.price)
        HStack{
            Text("\(dish.name)").frame(maxWidth: .infinity,alignment: .leading)
            Text("\(priceFormatted)").frame(maxWidth: .infinity,alignment: .trailing)
            Toggle("", isOn: $dish.isSelected).onChange( of: 		dish, perform: handler)
                .toggleStyle(CheckboxToggleStyle(style: .square))
            

        }.padding().background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255)).cornerRadius(16)
            }
        }
 

struct dishView_Previews: PreviewProvider {
    static func handler(_:Dishe){
        
    }
    static var previews: some View {
        dishView(dish:.constant(Dishe(name: "test", price: 0.4)), handler: handler
                                
                               
        )
    }
}
