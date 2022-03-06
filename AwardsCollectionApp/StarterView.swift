//
//  ContentView.swift
//  AwardsCollectionApp
//
//  Created by Елисей Мищенко on 06.03.2022.
//

import SwiftUI

struct StarterView: View {
    var body: some View {
        TabView {
           MainView()
                .tabItem {
                    Image(systemName: "rosette")
                    Text("Main")
                }
            
            AwardsView()
                .tabItem {
                    Image(systemName: "pencil.and.outline")
                    Text("Awards")
                }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
    }
}
