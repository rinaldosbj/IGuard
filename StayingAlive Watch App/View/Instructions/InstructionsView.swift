//
//  InstructionsView.swift
//  StayingAlive Watch App
//
//  Created by Lucas Migge de Barros on 29/11/22.
//

import SwiftUI

struct InstructionsView: View {
    let perrengue : Perrengue
    var instructions : [String] {
        perrengue.instructions
    }
    
    var body: some View {
        List {
            ForEach(instructions, id: \.self) { instruction in
                InstructionsRow(InstructionString: instruction)
            }
            .listStyle(.plain)
            
            InstructionsBottomView()
                .padding()
        }
        .listStyle(.elliptical)
        .navigationTitle(perrengue.name)
        .navigationBarTitleDisplayMode(.large)
    }
}


struct InstructionsBottomView : View {
    var body: some View {
        Text("Procure assistência médica especializada o mais breve possível. Caso seja necessário, não exite em chamar os serviços de emergência.")
            .foregroundColor(.secondary)
            .font(.footnote)
            .multilineTextAlignment(.leading)
            .italic()
            
        
        Button(action: {
            print("Clicou em mim")
        }, label: {
            Text("Entendi")
                .font(.headline)
                .foregroundColor(.accentColor)
                .frame(maxWidth: .infinity, alignment: .center)
                
                
        })
    
    }
}

struct InstructionsView_Previews: PreviewProvider {
    static var perrengues = Populate.populateFunc()
    
    static var previews: some View {
        InstructionsView(perrengue: perrengues[0])
    }
}
