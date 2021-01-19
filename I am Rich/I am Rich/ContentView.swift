//
//  ContentView.swift
//  I am Rich
//
//  Created by Promise Ochornma on 15/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(.systemTeal)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("I am Rich")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.system(size: 40))
                Image("diamond").resizable().frame(width: 150, height: 150, alignment: .center)
            }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
