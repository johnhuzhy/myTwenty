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
            List(0 ..< 20 ) {item in
                NavigationLink(destination: Text("Detail")) {
                    Image(systemName: "heart")
                        .resizable()
                        .foregroundColor(.red)
                        .frame(width: 50, height: 50, alignment: .center)
                    VStack (alignment: .leading, spacing: 0){
                        Text("Hello, Stella!")
                            .foregroundColor(.blue)
                        Text("Detail")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }

            }
            .navigationBarTitle(Text("Navigation Bar"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
