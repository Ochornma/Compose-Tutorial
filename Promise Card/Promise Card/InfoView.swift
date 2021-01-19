//
//  InfoView.swift
//  Promise Card
//
//  Created by Promise Ochornma on 16/01/2021.
//

import SwiftUI

struct InfoView: View {
    let text:String
    let imageName: String
    
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame( height: 50)
            .foregroundColor(.white)
            .overlay(HStack{
                Image(systemName: imageName).foregroundColor(.green)
                Text(text).foregroundColor(.black)
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "applelogo")
            .previewLayout(.sizeThatFits)
    }
}
