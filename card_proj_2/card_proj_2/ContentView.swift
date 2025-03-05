//
//  ContentView.swift
//  card_proj_2
//
//  Created by sensei_blaq on 11/10/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            Color(.white)
                .ignoresSafeArea()
            
            VStack{
                Image("card_img")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                HStack {
                    Text("Faithfulness of the Lord")
                        .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Image(systemName: "star.fill")
                        .font(.caption)
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .font(.caption)
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .font(.caption)
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .font(.caption)
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .font(.caption).foregroundColor(.yellow)
                }
                .padding(.bottom, 10.0)
                
                
                HStack {
                    Text("The faithfulness of God through all the seasons. Bible scriptures that show this in all the seasons of time.")
                        .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                        
                    Spacer()
                    
                    Image(systemName: "book.circle")
                    Image(systemName: "bookmark.circle")
                    Image(systemName: "binoculars.circle")
                }.font(.caption)
                
            }
            .padding()
            .background(Rectangle()
                .foregroundColor(.white)
                .cornerRadius(20)
            )
            .padding()
            .shadow(radius: 60
            )
                
            
        }
    }
}

#Preview {
    ContentView()
}
