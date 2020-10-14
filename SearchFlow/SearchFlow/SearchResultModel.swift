//
//  SearchResultModel.swift
//  SearchFlow
//
//  Created by 杨旗 on 2020/10/13.
//  Copyright © 2020 杨旗. All rights reserved.
//

import SwiftUI

struct SearchResultModel:Hashable,Identifiable {
    var id = UUID()
    var title:String = "标题"
    var describe:String = "内容"
    var price:String = "价格"
    
}
