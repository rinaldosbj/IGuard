//
//  EmergencyView.swift
//  StayingAlive Watch App
//
//  Created by rsbj on 29/11/22.
//

import SwiftUI

struct EmergencyView: View {
    let perrengues : [Perrengue] = Populate.getPerrengues()
    
    var body: some View {
            List{
                ForEach(perrengues, id: \.self) { perrengue in
                    NavigationLink(destination: InstructionsView(perrengue: perrengue)) {
                        EmergencyRow(perrengue: perrengue)
                    }
                }
            }
            .navigationTitle("Emergência")
            .navigationBarTitleDisplayMode(.large)
    }
}

struct EmergencyView_Previews: PreviewProvider {
    static var previews: some View {
        EmergencyView()
    }
}
