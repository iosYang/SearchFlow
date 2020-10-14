//
//  RowView.swift
//  SearchFlow
//
//  Created by 杨旗 on 2020/10/13.
//  Copyright © 2020 杨旗. All rights reserved.
//

import SwiftUI

struct RowView: View {
    
    var resultModel:SearchResultModel
    
    var body: some View {
        
        HStack{
            VStack {
                Text("\(resultModel.title)")
                    .font(.headline)
                Text("\(resultModel.describe)")
                    .font(.subheadline)
                    .fontWeight(.thin)
            }.frame(width: 200.0, height: 80.0, alignment: .leading)
            Text(" $\(resultModel.price) ").foregroundColor(Color.blue).fontWeight(.light).background(Color(red: 230.0/255.0, green: 230.0/255.0, blue: 230.0/255.0)).frame(width: 100.0, height: 30.0, alignment: .trailing).cornerRadius(20)
        }.frame(width: UIScreen.main.bounds.size.width, height: 80.0, alignment: .center)
        
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {

        RowView(resultModel: SearchResultModel()).previewLayout(.fixed(width: UIScreen.main.bounds.size.width, height: 80.0))
        
    }
}
