//
//  PageView.swift
//  StayingAlive Watch App
//
//  Created by Guilherme Souza on 29/11/22.
//

import SwiftUI

struct PageView: View {
    var body: some View {
        TabView {
            Onboarding1View()
            Onboarding2View()
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView()
    }
}
