//
//  AwardsView.swift
//  AwardsCollectionApp
//
//  Created by Елисей Мищенко on 06.03.2022.
//

import SwiftUI

struct AwardsView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    GradientRectangles()
                        .frame(width: 250, height: 250)
                    PathView()
                        .frame(width: 250, height: 250)
                    CurvesView()
                        .frame(width: 250, height: 250)
                    GradientCircle()
                        .frame(width: 300, height: 300)
                }
            }
            .navigationBarTitle("Awards")
        }
    }
}

struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
