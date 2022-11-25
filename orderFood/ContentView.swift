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
                ForEach($repository.dishes) { $dishes in allMenuView(menu: $dishes)
            }
                HStack{
                    Text("Total Amount").font(.system(size: 20)).fontWeight(.bold)
                    Spacer()
                    Text("\(String(format: "%.2f", repository.getBill()))").font(.system(size: 20)).fontWeight(.bold)
                    Text("$")
                }.padding()
                
                Divider()
                if repository.getBill()==0.0{
                Text("Order")
                        
                        .frame(maxWidth: .infinity,minHeight: 45).background(Color.gray.opacity(0.2)).foregroundColor(Color.black).padding()
                        .font(.system(size:20))
                        .cornerRadius(18)
                }else{
                    NavigationLink(destination: BillView(amount:
                                                            repository.getBill(),selectedDishes: repository.getSelectedDishes())) {
                            
                        Text("Order")
                                
                            .frame(maxWidth: .infinity,minHeight: 45).background(.blue).foregroundColor(Color.white).padding()
                            
                                .font(.system(size:20))
                                .cornerRadius(18)
                       }
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
