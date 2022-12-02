//
//  HelpView.swift
//  StayingAlive Watch App
//
//  Created by Lucas Migge de Barros on 02/12/22.
//

import SwiftUI

struct HelpView: View {
    var body: some View {
        NavigationStack{
            TabView {
                Onboarding2View()
                Onboarding3View()

            }
            .tabViewStyle(PageTabViewStyle())
            .navigationTitle("Ajuda")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
