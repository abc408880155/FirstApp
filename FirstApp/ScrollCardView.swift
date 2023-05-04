//
//  ScrollCardView.swift
//  FirstApp
//
//  Created by Zemise on 2023/5/4.
//

import SwiftUI

struct ScrollCardView: View {
    // MARK: - properties
    // var card: Card
    
    // MARK: -body
    var body: some View {
        // 指定横向滚动，不显示滚动条
        ScrollView(.horizontal, showsIndicators: false){
            // 中心对齐，横向间隔20
            HStack(alignment: .center, spacing: 20){
                // 利用循环生成多个卡片CardView卡片视图
                ForEach(0 ..< 2) { item in
                    CardView(card: cardData[item])
                } //: Loop
                
            } // : HStack
            .padding(20)
        } // : ScrollCardView
    }
}


struct ScrollView_Preview: PreviewProvider {
    static var previews: some View {
        ScrollCardView()
    }
}
