//
//  ScrollSection.swift
//  Multiply
//
//  Created by Brandon Glenn on 11/1/19.
//  Copyright © 2019 Brandon Glenn. All rights reserved.
//

import SwiftUI

struct Prompt: View {
    var text: String
    
    var body: some View {
        ZStack {
            Text(text)
                .font(.title)
                .padding(10)
                .foregroundColor(.blue)
//                .shadow(color: .black, radius: 3)
        }
    }
}



struct SelectMultiplicationTable: View {
    var image: String
    var maxNumber: Int
    
    
    @Binding var buttonNumber:Int
    @State private var firstNumberSelected = false
    
    var body: some View {
        VStack {
            HStack(spacing: 10) {
                ForEach(1..<7) { number in
                    Button (action: {
                        self.firstNumberSelected = true
                        self.buttonNumber = number
                        print ("you have selected \(number)'s table")
                    }) {
                        CustomButton(number: number)
                    }
                }
            }
            
            HStack(spacing: 10) {
                ForEach(7..<13) { number in
                    Button (action: {
                        self.firstNumberSelected = true
                        self.buttonNumber = number
                        print ("you have selected \(number)'s table")
                    }) {
                        CustomButton(number: number)
                        
                    }
                }
            }
            Text("\(buttonNumber)")
        }
    }
}



struct ScrollSection_Previews: PreviewProvider {
    
    static var previews: some View {
        Group{
            SelectMultiplicationTable(image: "trash.fill", maxNumber: 12, buttonNumber: .constant(3) )
            Prompt(text: "Test String")

        }
    }
}
