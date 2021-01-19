//
//  DiceView.swift
//  Dice
//
//  Created by Promise Ochornma on 17/01/2021.
//

import SwiftUI

struct DiceView: View {
    let n :Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
    }
}

struct DiceView_Previews: PreviewProvider {
    static var previews: some View {
        DiceView(n: 1).previewLayout(.sizeThatFits)
    }
}
