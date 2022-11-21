//
//  dishView.swift
//  orderFood
//
//  Created by habbiche lotfi on 18/11/2022.
//

import SwiftUI

struct dishView: View {
    @Binding var dish:Dishes
    @State var doesSelected=false
  
    var body: some View {
        let priceFormatted = String(format: "%.2f", dish.price)
        HStack{
            Text("\(dish.name)").frame(maxWidth: .infinity,alignment: .leading)
            Text("\(priceFormatted)").frame(maxWidth: .infinity,alignment: .trailing)
            Toggle("", isOn: $dish.isSelected)
                        .toggleStyle(.switch).onChange(of: dish.isSelected) { value in
                            // action...
                            print(value)
                        }

                }.padding()
            }
        }
 

struct dishView_Previews: PreviewProvider {
    static var previews: some View {
        dishView(dish:.constant(Dishes(name: "test", price: 0.4))
                                
                               
        )
    }
}
