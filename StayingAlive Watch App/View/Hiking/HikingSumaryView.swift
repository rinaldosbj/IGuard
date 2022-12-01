//
//  HikingSumaryView.swift
//  StayingAlive Watch App
//
//  Created by Lucas Migge de Barros on 30/11/22.
//

import SwiftUI

struct HikingSumaryView: View {
    
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 7) {
                SumaryInfo(infoTittle: "Tempo de Atividade",
                           info: "00:00:00")
                
                Divider()
                
                SumaryInfo(infoTittle: "Distância Total",
                           info: "5.43 km")
                
                Divider()
                
                SumaryInfo(infoTittle: "Calorias",
                           info: "241")
                
                Divider()
                
                SumaryInfo(infoTittle: "Batimento Card. Médio", info: "120 BPM")
                
                Button(action: {
                    print("Clicou em mim")}) {
                        Text("Fechar")
                            .foregroundColor(Color("xLightBlue"))
                    }
            }
            .padding()
            
        }
    }
}

struct SumaryInfo : View {
    var infoTittle : String
    var info : String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(infoTittle)
                .font(.headline)
                .foregroundColor(.accentColor)
            Text(info)
                .font(.caption)
        }
    }
}

struct HikingSumaryView_Previews: PreviewProvider {
    static var previews: some View {
        HikingSumaryView()
    }
}
