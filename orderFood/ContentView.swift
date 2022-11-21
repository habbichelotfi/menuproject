//
//  ContentView.swift
//  orderFood
//
//  Created by habbiche lotfi on 18/11/2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var repository = DishesRepository.shared
    
    
    var body: some View {
        ScrollView(.vertical){
            Text("Menu").frame(maxWidth: .infinity,alignment: .leading).padding()
                .font(.system(size: 30))
                .fontWeight(.bold)
            VStack {
                ForEach($repository.dishes) { $dishes in allMenuView(menu: $dishes,manyAreSelected: $repository.isMoreSelected)
            }
//                Text("\(repository.getBill())")
                HStack{
                    Text("Total Amount").font(.system(size: 20)).fontWeight(.bold)
                    Spacer()
                    Text("\(String(format: "%.2f", repository.getBill()))").font(.system(size: 20)).fontWeight(.bold)
                    
                }.padding()
                    NavigationLink(destination: BillView(amount:
                            repository.getBill())) {
                        
                        Button("Order"){
                            
                        }.frame(maxWidth: .infinity,minHeight: 35).background(.blue).foregroundColor(Color.white).padding()
                            
                   }
              
                    
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
