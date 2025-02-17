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
        
        ScrollView {
            VStack {
                ForEach(citites) { city in
                    Text(city.name)
                }
            }
            .padding().onAppear {
                citites = dataService.getData()
        }
        
        }
    }
}

#Preview {
    CityView()
}
