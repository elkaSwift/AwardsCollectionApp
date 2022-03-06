//
//  MainView.swift
//  AwardsCollectionApp
//
//  Created by Елисей Мищенко on 06.03.2022.
//

import SwiftUI

struct MainView: View {
    @State private var showAward = false
    
    var body: some View {
        VStack {
            Button(action: { showAward.toggle() }) {
                HStack {
                    Text(showAward ? "Hide Award" : "Show Award")
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .rotationEffect(.degrees(showAward ? 0 : -180))
                        .animation(.default)
                }
            }
            Spacer()
            GradientCircle()
                .frame(width: 300, height: 300)
                .opacity(showAward ? 1 : 0)
                .animation(
                    .interpolatingSpring(
                        mass: 1,
                        stiffness: 100,
                        damping: 10,
                        initialVelocity: 0)
                )
            Spacer()
        }
        .font(.headline)
        .padding()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
