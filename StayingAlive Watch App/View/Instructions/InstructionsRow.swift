//
//  InstructionsRow.swift
//  StayingAlive Watch App
//
//  Created by Lucas Migge de Barros on 29/11/22.
//

import SwiftUI

struct InstructionsRow: View {
    let InstructionString : String
    
    var body: some View {
        HStack(spacing: 8.0) {
            Capsule()
                .frame(width: 4)
                .foregroundColor(.accentColor)
            
            Text(InstructionString)
                .foregroundColor(.white)
                .font(.caption)
        }
    }
}

struct InstructionsRow_Previews: PreviewProvider {
    static var perrengues = Populate.getPerrengues()
    
    static var previews: some View {
        InstructionsRow(InstructionString: perrengues[0].instructions[0])
    }
}
