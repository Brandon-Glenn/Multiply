//
//  Difficulty.swift
//  Multiply
//
//  Created by Brandon Glenn on 11/2/19.
//  Copyright © 2019 Brandon Glenn. All rights reserved.
//

import SwiftUI

struct Difficulty: View {
    @State private var difficulty = 0.0
    
    
    var body: some View {
        
        VStack {
            HStack {
                Text("Easy")
                Spacer()
                Text("Medium")
                Spacer()
                Text("Hard")
            }
            .padding(.horizontal, 20)
            
            Slider(value: $difficulty, in: 0...2, step: 1)
                .padding(.horizontal, 20)
        }
    }
}

struct Difficulty_Previews: PreviewProvider {
    static var previews: some View {
        Difficulty()
    }
}
