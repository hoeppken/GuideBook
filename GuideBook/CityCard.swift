//
//  CityCard.swift
//  GuideBook
//
//  Created by Rafael dos Santos Varela on 19.02.25.
//

import SwiftUI

struct CityCard: View {
    
    var city : City
    
    var body: some View {
        
        ZStack {
       
            Rectangle()
                .background(content: {
                Image(city.imageName).resizable().aspectRatio(contentMode:.fill)
                }).foregroundColor(.clear).cornerRadius(15)
            
            Rectangle().foregroundColor(.black).opacity(0.5).cornerRadius(15)
            
            VStack(alignment: .leading) {
                
                Text(city.name).font(.largeTitle).bold()
                
                Spacer()
                
                Text(city.summary).multilineTextAlignment(.leading)
                
            }.foregroundColor(.white).padding()
        }.frame(height: 400)
        
    }
}

#Preview {
    CityCard(city: City(name: "Tokyo", summary: "Tokyo serves as Japan's economic center and is the seat of both the Japanese government and the Emperor of Japan. Tokyo.", imageName: "tokyo", attractions: [Attraction]())
    )
}
