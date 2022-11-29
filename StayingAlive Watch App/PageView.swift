//
//  PageView.swift
//  StayingAlive Watch App
//
//  Created by Guilherme Souza on 29/11/22.
//

import SwiftUI

struct PageView: View {
    var body: some View {
        NavigationStack{
            TabView {
                Onboarding1View()
                Onboarding2View()
                Onboarding3View()
                TransitionToHomeView()
            }
            .tabViewStyle(PageTabViewStyle())
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView()
    }
}
