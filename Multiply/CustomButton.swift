//
//  CustomButton.swift
//  Multiply
//
//  Created by Brandon Glenn on 11/4/19.
//  Copyright © 2019 Brandon Glenn. All rights reserved.
//

import SwiftUI


struct CustomButton: View {
    var number: Int
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.green, .blue]), center: .center, startRadius: 1, endRadius: 60)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 2))
                .frame(width: 35, height: 50)
            
            
            VStack {
//                Image(systemName:"trash.fill")
                Text("\(number)")
                    .font(.title)
            }
            .foregroundColor(.white)
            .font(.headline)
        }
    }
}


struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(number: 0)
    }
}
