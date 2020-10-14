//
//  SearchBar.swift
//  SearchFlow
//
//  Created by 杨旗 on 2020/10/13.
//  Copyright © 2020 杨旗. All rights reserved.
//

import SwiftUI
    
struct SearchBar : UIViewRepresentable {

    
    @Binding var text : String
    
    
    class Coordinator: NSObject, UISearchBarDelegate {
        
        @Binding var text : String
        
        init(text:Binding<String>) {
            _text = text
        }
        
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            text = searchText
        }
    }
    
    func makeCoordinator() -> SearchBar.Coordinator {
        return Coordinator(text: $text)
    }
    
    func makeUIView(context: UIViewRepresentableContext<SearchBar>) -> UISearchBar {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.delegate = context.coordinator
        searchBar.placeholder = "Tap here to search"
        
        return searchBar
    }
    
    func updateUIView(_ uiView: UISearchBar, context: UIViewRepresentableContext<SearchBar>) {
        uiView.text = text
    }
}
