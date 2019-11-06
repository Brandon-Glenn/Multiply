//
//  QuestionSelection.swift
//  Multiply
//
//  Created by Brandon Glenn on 11/4/19.
//  Copyright © 2019 Brandon Glenn. All rights reserved.
//

import SwiftUI

struct QuestionSelection: View {
    @Binding var numberOfQuestions: Int
    
    var numberChoices = [5, 10, 15]
    
    var body: some View {
        HStack(spacing: 10) {
            ForEach(0..<numberChoices.count) { number in
                
                Button (action: {
                    self.numberOfQuestions = self.numberChoices[number]
                    print ("you have selected \(self.numberChoices[number]) questions")
                }) {
                    CustomButton(number: self.numberChoices[number])
                }
                
            }
        }
    }
}

struct QuestionSelection_Previews: PreviewProvider {
    static var previews: some View {
        QuestionSelection(numberOfQuestions: .constant(2))
    }
}
