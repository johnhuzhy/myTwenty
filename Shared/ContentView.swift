//
//  ContentView.swift
//  Shared
//
//  Created by Huzhy on 2022/04/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(0 ..< 5 ) {index in
                // 导航条迁移
                NavigationLink(destination: DetailView()) {
                    Image(systemName: "heart")
                        // 可调节大小
                        .resizable()
                        .foregroundColor(.red)
                        // 大小设置
                        .frame(width: 50, height: 50, alignment: .center)
                    VStack (alignment: .leading, spacing: 0){
                        Text("Hello, Stella! \(index)番目")
                            // 颜色设置
                            .foregroundColor(.blue)
                        Text("ImageDetail")
                            // 字体设置
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                // 导航条迁移
                NavigationLink(destination: InputView()) {
                    Image(systemName: "pencil.circle")
                        // 可调节大小
                        .resizable()
                        .foregroundColor(.green)
                        // 大小设置
                        .frame(width: 50, height: 50, alignment: .center)
                    VStack (alignment: .leading, spacing: 0){
                        Text("Stella, Please Input!")
                            // 颜色设置
                            .foregroundColor(.blue)
                        Text("InputView")
                            // 字体设置
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }
            // 导航条标题
            .navigationBarTitle(Text("Navigation Bar"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
