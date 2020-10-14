//
//  ContentView.swift
//  SearchFlow
//
//  Created by 杨旗 on 2020/10/12.
//  Copyright © 2020 杨旗. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var searchItem:String = ""
    
    var messages:[SearchResultModel] = [SearchResultModel(title:"V11", describe: "in-stock", price: "599.99"),SearchResultModel(title: "V10", describe: "Out-of-stock", price: "299.99"),SearchResultModel(title: "Supersonic", describe: "in-stock", price: "399.99")]
    
    var body: some View {
        
        NavigationView{
            
            ScrollView {
            
                SearchBar(text: $searchItem)
                
                if self.searchItem == "Dyson" {
                
                    ForEach(messages, id: \.self) { (message)  in
                        RowView(resultModel: message)
                    }
                    
                        
                }else if self.searchItem.count > 0 {
                    Text("No Result").frame(width: UIScreen.main.bounds.size.width, height: 400.0, alignment: .center)
                
                }
                                
            }
                
            .navigationBarTitle("Search")

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
