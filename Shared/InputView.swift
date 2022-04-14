//
//  InputView.swift
//  myTwenty
//
//  Created by Huzhy on 2022/04/09.
//

import SwiftUI

struct HeaderView: View {
    @Binding var title:String
    var counter = 0
    
    init(title: Binding<String>) {
        self._title = title
        self.counter = self._title.wrappedValue.count
    }
    
    var body: some View{
        VStack {
            Text(self.title)
                .font(.title)
                .foregroundColor(.red)
            Text("--- \(self.counter)桁文字 ---")
                .font(.title2)
                .foregroundColor(.orange)
        }
    }
}

struct InputView: View {
    @State private var title = "最高の教科書"
    @State private var inputText = ""
    
    var body: some View {
        VStack {
            HeaderView(title: self.$title)
                .padding(15)
            // 数据单向绑定 不需要$
            Text(self.title)
                .font(.largeTitle)
            // 数据双向绑定 $inputText
            TextField("タイトルを入力してください", text: self.$inputText)
                .font(.title2)
                .padding(10)
                .frame(width: UIScreen.main.bounds.width * 0.9, height: 50, alignment: .center)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .shadow(color: .blue, radius: 2)
            Button {
                self.title = self.inputText
            } label: {
                Text("確認")
                    .font(.title)
                    .padding()
                    .background(.green)
                    .foregroundColor(.white)
                    .cornerRadius(15)
            }
        }
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView()
    }
}
