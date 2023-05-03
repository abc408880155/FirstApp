//
//  CardView.swift
//  FirstApp
//
//  Created by Demise on 2023/5/3.
//

import SwiftUI

struct CardView: View {
    // Mark - Properties
    
    var gardient: [Color] = [Color("Color01"), Color("Color02")]

    // Mark - Body
    var body: some View {
        ZStack {
            
            Image("Zemise01")
            
            VStack {
                Text ("SwiftUI")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Text("如此美妙 不同凡响")
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .italic()
            }
            .offset(y: -250)
            
            HStack{
            Button(action: {
                print("按钮被用户点击")
            }){
                Text("技术总监")
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
            .background(LinearGradient(gradient:Gradient(colors: gardient),
                        startPoint: .leading,
                        endPoint: .trailing))
            .clipShape(Capsule())
            .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
                
            } // Button
            .offset(y: 170)
            
        } //： ZStack
        .frame(width: 355,height: 565) // 设置容器像素
        .cornerRadius(16)
        .shadow(radius: 8)
        // 渐变色背景    颜色数组、起点、中点
        .background(LinearGradient(gradient:Gradient(colors: gardient),
                    startPoint: .top,
                    endPoint: .bottom))
    }

}

// Mark - Preview
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .previewLayout(.sizeThatFits)
    }
}
