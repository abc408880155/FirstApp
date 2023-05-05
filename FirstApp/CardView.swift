//
//  CardView.swift
//  FirstApp
//
//  Created by Demise on 2023/5/3.
//

import SwiftUI

struct CardView: View {
    // MARK: - Properties
    var card: Card
    // 添加fadeIn属性，用于标记一个淡入动画
    // @State关键字对fadeIN进行封装，其值一旦修改，相关的界面就会同步修改
    @State private var fadeIn: Bool = false
    
    @State private var moveDownward: Bool = false
    @State private var moveUpward: Bool = false
    
    var hapticImapact = UIImpactFeedbackGenerator(style: .heavy)

    // MARK: -Body
    var body: some View {
        ZStack {
            
            Image(card.imageName)
                .opacity(fadeIn ? 1.0 : 0.0)
            
            VStack {
                Text (card.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Text(card.headline)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .italic()
            }
            // 添加下滑入的动画效果
            .offset(y: moveDownward ? -218 : -300)
            
            HStack{
            Button(action: {
                print("按钮被用户点击")
                playerSound(sound: "晚安喵", type: "mp3")
                hapticImapact.impactOccurred()
            }){
                Text(card.callToAction)
                    .font(.system(size: 30))
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                // 指定按钮的强调色
                    .accentColor(.white)
                
                Image(systemName: "arrow.right.circle")
                    .font(Font.title.weight(.medium))
                    .accentColor(.white)
            } // HStack
            .padding(.vertical)
            .padding(.horizontal, 24)
            .background(LinearGradient(gradient:Gradient(colors: card.gradientColors),
                       // 从左到右渐变
                        startPoint: .leading,
                        endPoint: .trailing))
            .clipShape(Capsule())
            .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
                
            } // Button
            .offset(y: moveUpward ? 210 : 300)
            
        } //： ZStack
        .frame(width: 355,height: 565) // 设置容器像素
        .cornerRadius(16)
        .shadow(radius: 8)
        .onAppear() {
            // 线性动画，时长 1.2 秒
            withAnimation(.linear(duration: 1.2)) {
                self.fadeIn.toggle()
            }
            withAnimation(.linear(duration: 0.8)) {
                self.moveDownward.toggle()
                self.moveUpward.toggle()
            }
            
        }
        // 渐变色背景    颜色数组、起点、中点
        .background(LinearGradient(gradient:Gradient(colors: card.gradientColors),
                    startPoint: .top,
                    endPoint: .bottom))
    }

}

// Mark - Preview
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: cardData[1])
            .previewLayout(.sizeThatFits)
    }
}
