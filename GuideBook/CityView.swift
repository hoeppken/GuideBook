//
//  ContentView.swift
//  GuideBook
//
//  Created by Rafael dos Santos Varela on 17.02.25.
//

import SwiftUI

struct CityView: View {
    
    @State var citites = [City]()
    var dataService = DataService()
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView (showsIndicators: false){
                
                VStack {
                    ForEach(citites) { city in
                        
                        NavigationLink {
                            AttractionView(city: city)
                        } label: {
                            CityCard(city: city).padding(.bottom, 20)
                        }

                        
                        
                    }
                }
                
            }.padding(.horizontal)
        }.ignoresSafeArea(.all)
        
        
        .onAppear {
            citites = dataService.getData()
            
        }
    }
}

#Preview {
    CityView()
}
