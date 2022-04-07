//
//  DetailView.swift
//  myTwenty
//
//  Created by Huzhy on 2022/04/05.
//

import SwiftUI

struct DetailView: View {
    @State private var zoomed = false
    
    var body: some View {
        ZStack(alignment: self.zoomed ? .top : .topTrailing) {
            Image("jinja")
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .navigationTitle("厳島神社")
                .navigationBarTitleDisplayMode(.inline)
                .onTapGesture {
                    withAnimation{
                        self.zoomed.toggle()
                    }
            }
            Image("cat")
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
                .opacity(0.8)
                .padding(.all, 5)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView()
        }
    }
}
