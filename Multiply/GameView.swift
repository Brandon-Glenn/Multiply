//
//  GameView.swift
//  Multiply
//
//  Created by Brandon Glenn on 11/5/19.
//  Copyright © 2019 Brandon Glenn. All rights reserved.
//

import SwiftUI

struct GameView: View {
    @Binding var multiplicationTable: Int
    @Binding var numberOfQuestions: Int
    
    @Binding var showSettings: Bool
    @Binding var questionBank: [Int]
    
    
    @State private var question: String = ""
    var randomNumber = Int.random(in: 0...20)
    
    var body: some View {
        VStack(spacing: 50) {
            
            if multiplicationTable > 0 {
                Text("Multiplication table:  \(multiplicationTable)")
            }
            
            Text("What is \(multiplicationTable) x \(randomNumber)")
            
            HStack {
                Button ("choice 1") {
                    print ("Choice 1")
                }
                Button ("choice 2") {
                   print ("Choice 2")
               }
            }
            
            Button ("Submit") {
                self.promptQuestion()
            }
            
            
            Button ("Settings") {
                self.showSettings.toggle()
                
            }
            
        }.onAppear(perform: self.promptQuestion)
    }
    
    func promptQuestion () {
            
        
        self.question = "This is my question:"

       
        
        
    }

}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(multiplicationTable: .constant (12), numberOfQuestions: .constant(4), showSettings: .constant(true), questionBank: .constant([3,5,2]))
    }
}


