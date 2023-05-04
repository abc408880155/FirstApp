//
//  CardModel.swift
//  FirstApp
//
//  Created by Zemise on 2023/5/4.
//

import SwiftUI
// MARK: - 卡片数据模型
struct Card: Identifiable {
    // identifiable协议，结构体被实例化后每个对象都是唯一、可标识的
    // UUID函数随机生成一个唯一的值
    var id = UUID()
    var title: String
    var headline: String
    var imageName: String
    var callToAction: String
    var message: String
    var gradientColors: [Color]
}





//struct CardModel_Previews: PreviewProvider {
//    static var previews: some View {
////        CardModel()
//    }
//}
