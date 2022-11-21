//
//  BillView.swift
//  orderFood
//
//  Created by habbiche lotfi on 18/11/2022.
//

import SwiftUI

struct BillView: View {
   var amount : Float
    

    var body: some View {
        VStack(alignment:.leading){
            Text("Bill").fontWeight(.bold).font(.system(size: 30)).frame(maxWidth: .infinity,alignment: .leading)
            Image("restaurant").resizable()
                .aspectRatio(contentMode:.fit)
                .frame(width: .infinity, height: 250.0, alignment: .trailing)
            
            HStack{
                Text("Total Amount").font(.system(size: 24)).fontWeight(.bold)
                Spacer()
                Text("\(String(format: "%.2f", amount))").font(.system(size: 24)).fontWeight(.bold)
                
            }
            Button("Copy to ClipBoard"){
                	
            }.frame(maxWidth: .infinity,minHeight: 35).background(.blue).foregroundColor(Color.white)
        }.padding()
    }
}

struct BillView_Previews: PreviewProvider {
    static var previews: some View {
        BillView(amount: 0.5)
    }
}
