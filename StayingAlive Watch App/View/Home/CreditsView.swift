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
                Spacer()
                Image(systemName: "apple.logo")
                    .resizable()
                    .frame(width: 20, height: 25)
                    .foregroundColor(.accentColor)
                Spacer()
                Text("Apple Developer Academy - Recife")
                Spacer()
            }
            Spacer()
            
            VStack {
                ForEach(autores, id: \.self) { autor in
                    Text(autor)
                } .font(.caption2)
                
            }
            .padding(10)
            .overlay( /// apply a rounded border
                RoundedRectangle(cornerRadius: 15)
                    .stroke(lineWidth: 1.5)
                    .foregroundColor(.accentColor)
            )
           
            }
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
