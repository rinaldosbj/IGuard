//
//  CreditsView.swift
//  StayingAlive Watch App
//
//  Created by Lucas Migge de Barros on 29/11/22.
//

import SwiftUI

struct CreditsView: View {
    let autores : [String] = [ "Bruna Avellar",
                               "Guilherme Souza",
                               "João Pedro Monteiro",
                               "Lucas Migge",
                               "Rinaldo da Silva"]
    
    
    var body: some View {
        VStack {
            
            HStack {
                Image(systemName: "apple.logo")
                    .resizable()
                    .frame(width: 22, height: 25)
                    .foregroundColor(.accentColor)
                Text(
                    "Apple’s Developer Academy - Recife"
                )
            }
            
            VStack {
                ForEach(autores, id: \.self) { autor in
                    Text(autor)
                } .font(.caption2)
                
            }
            .padding(10)
            .border(Color("xLightBlue"))
        }
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
