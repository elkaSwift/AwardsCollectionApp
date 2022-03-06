//
//  GradientCircle.swift
//  AwardsCollectionApp
//
//  Created by Елисей Мищенко on 06.03.2022.
//

import SwiftUI

struct GradientCircle: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            ZStack {
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [.yellow, .pink]),
                            startPoint: UnitPoint(x: 1, y: 0),
                            endPoint: UnitPoint(x: 0, y: 1)
                        )
                    )
                    .frame(
                        width: width * 0.7,
                        height: height * 0.7
                    )
                    .shadow(radius: 15)
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                
                Image(systemName: "car")
                    .resizable()
                    .scaleEffect(0.3)
                    .colorInvert()
            }
        }
    }
}

struct GradientCircle_Previews: PreviewProvider {
    static var previews: some View {
        GradientCircle()
            .frame(width: 300, height: 300)
    }
}
