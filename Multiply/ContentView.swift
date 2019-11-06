//
//  ContentView.swift
//  Multiply
//
//  Created by Brandon Glenn on 10/31/19.
//  Copyright © 2019 Brandon Glenn. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var multiplicationTable: Int = 1
    @State private var numberOfQuestions: Int = 0
    @State private var difficulty: Int = 0
    
    
    @State private var showSettings = false
    @State private var questionBank = [Int]()
    
    
    
    //SubView Variables

    var body: some View {
        NavigationView {
            GameView(multiplicationTable: $multiplicationTable, numberOfQuestions: $numberOfQuestions, showSettings: $showSettings, questionBank: $questionBank)
                .onAppear(perform: self.startGame)
            }
        .sheet(isPresented: $showSettings, onDismiss:  {
            self.generateQuestions()
        }) {
                 
                VStack{
                    Prompt(text: "Choose A Number")
                    SelectMultiplicationTable( image: "trash.fill", maxNumber: 6, buttonNumber: self.$multiplicationTable)
                    
                    Prompt(text: "How Many Questions?")
                    QuestionSelection(numberOfQuestions: self.$numberOfQuestions)
                    
                    Prompt(text: "Difficulty")
                    Difficulty()
                    
                   
                    Button (action: {
                        self.generateQuestions()
                        self.showSettings.toggle()
                
                    }) {
                       Text("Lets Play!")
                           .font(.headline)
                           .padding(20)
                           .padding(.horizontal, 10)
                           .foregroundColor(.white)
                           .background(Color.red)
                           .clipShape(Capsule())
                           .overlay(Capsule().stroke(Color.black, lineWidth: 2))
                   }
            }
                .padding(.horizontal,10)
                .navigationBarTitle("Multiply It")
        }
    }
    
    //-------------------------------------------------------------------------------
    func startGame() {
        print ("game started")
        generateQuestions()
    }
    
    //-------------------------------------------------------------------------------
    func generateQuestions () {
   
        if numberOfQuestions == 0 {
            return
        }
        
        print (numberOfQuestions)
        
        for _ in (1...numberOfQuestions) {
            questionBank.append(Int.random(in: 0...12))
        }
        print (questionBank)
        
    }
    
    
    
}


// MARK: Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
//            ContentView ().environment(\.colorScheme, .dark)
        }
    }
}

