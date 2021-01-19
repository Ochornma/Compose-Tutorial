//
//  ContentView.swift
//  Dice
//
//  Created by Promise Ochornma on 17/01/2021.
//

import SwiftUI

struct ContentView: View {
   @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image("diceeLogo")
                
                Spacer()

                HStack{
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                .padding(.horizontal)
                
                Spacer()

                Button(action: {
                    actionForClick()
                }, label: {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }).background(Color.red)
            }
        }
    }
     func actionForClick() {
        leftDiceNumber  = Int.random(in: 1...6)
        rightDiceNumber  = Int.random(in: 1...6)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


