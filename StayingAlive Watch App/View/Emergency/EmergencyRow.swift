//
//  EmergenceRow.swift
//  StayingAlive Watch App
//
//  Created by Lucas Migge de Barros on 29/11/22.
//

import SwiftUI

struct EmergencyRow: View {
    let perrengue : Perrengue
    
    var body: some View {
        HStack {
            Text(perrengue.name)
                .font(.headline)
                .foregroundColor(.accentColor)
            Spacer()
            perrengue.image
                .padding(.trailing)
            
        }
    }
}

struct EmergencyRow_Previews: PreviewProvider {
    static let perrengues : [Perrengue] = Populate.getPerrengues()
    
    static var previews: some View {
        EmergencyRow(perrengue: perrengues[0])
    }
}
