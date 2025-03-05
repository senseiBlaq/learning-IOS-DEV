//
//  ContentView.swift
//  war_game_proj_3
//
//  Created by sensei_blaq on 17/10/2024.
//

import SwiftUI

struct ContentView: View {
    // declaration and initailisation of properties
    @State var playerCard = "card4"
    @State var cpuCard = "card7"

    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            
            Image("background-wood-cartoon")
            
            VStack{
                Spacer()
                
                
                Button {
                    resetScore()
                }
                    label:{
                        Image("logo")
                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button { // button with function call and image
                    deal()
                } 
                    label: {
                        Image("button")
                    }
                
                
                
                Spacer()
                
                HStack{
                    Spacer()
                    
                    VStack {
                        Text("Player")
                            .padding(.bottom)
                        Text(String(playerScore)) // convert the properpty to string
                    }
                    
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .padding(.bottom)
                        Text(String(cpuScore)) // convert property to string
                    }
                    
                    Spacer()
                }
                .foregroundColor(.white)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.bold)
                
                
                Spacer()
            }
            
        }.ignoresSafeArea()
        
        
    }
    
    func deal() {
        // randomise cards store in constants to ensure they can't not me modified
        let playerCardValue  = Int.random(in: 2...14)
        let cpuCardValue = Int.random(in: 2...14)
        
        // concat value with base string and cast value to get the card image by name
        playerCard = "card" + String(playerCardValue)
        cpuCard = "card" + String(cpuCardValue)
        
        // call function to update score with arguments that can be modified
        updateScore(&playerScore, &cpuScore, playerCardValue, cpuCardValue)
        
    }
    
    func updateScore (_ playerScore: inout Int, _ cpuScore: inout Int, _ playerCardValue: Int, _ cpuCardValue: Int) { // function to update scores with parameters that be modified
        
        if cpuCardValue < playerCardValue {
            playerScore += 1
        }
        else if cpuCardValue > playerCardValue {
            cpuScore += 1
        }
        
    }
    
    func resetScore () { // function to restart the game 
        playerScore = 0
        cpuScore = 0
    }
}

#Preview {
    ContentView()
}
