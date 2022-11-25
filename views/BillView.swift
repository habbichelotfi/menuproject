//
//  BillView.swift
//  orderFood
//
//  Created by habbiche lotfi on 18/11/2022.
//

import SwiftUI
import UniformTypeIdentifiers

struct BillView: View {
   var amount : Float
    var selectedDishes: Array<Dishe>

    var body: some View {
        VStack(alignment:.leading){
            Text("Your Bill ").fontWeight(.bold).font(.system(size: 30)).frame(maxWidth: .infinity,alignment: .leading)
            Image("restaurant").resizable()
                .aspectRatio(contentMode:.fit)
//                .frame(width: .infinity, height: 250.0, alignment: .trailing)
            Text("You ordered").font(.system(size: 18)).fontWeight(.bold)
            ForEach(selectedDishes) { dish in
                HStack{
                    Text(dish.name).frame(maxWidth:.infinity,alignment: .leading)
                    Text((String(format: "%.2f", dish.price)))
                    Text("$")
                }.padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                   
            }
            HStack{
                Text("Total Amount").font(.system(size: 23)).fontWeight(.bold)
                Spacer()
                Text("\(String(format: "%.2f", amount))").font(.system(size: 23)).fontWeight(.bold)
                Text("$")
                
            }
            Button("Copy to ClipBoard"){
                UIPasteboard.general.setValue((String(format: "%.2f", amount)),
                           forPasteboardType: UTType.plainText.identifier)
            }.frame(maxWidth: .infinity,minHeight: 50).background(.blue).foregroundColor(Color.white).cornerRadius(18).font(.system(size:20))
        }.padding()
    }
}

struct BillView_Previews: PreviewProvider {
    static var previews: some View {
        BillView(amount: 0.5,selectedDishes: [Dishe(name: "dsda", price: 0.4)])
    }
}
