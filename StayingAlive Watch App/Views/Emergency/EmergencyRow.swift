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
            
        }
    }
}

struct EmergencyRow_Previews: PreviewProvider {
    static let perrengues : [Perrengue] = Populate.populateFunc()
    
    static var previews: some View {
        EmergencyRow(perrengue: perrengues[0])
    }
}
