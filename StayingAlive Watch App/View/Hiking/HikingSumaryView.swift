//
//  HikingSumaryView.swift
//  StayingAlive Watch App
//
//  Created by Lucas Migge de Barros on 30/11/22.
//

import SwiftUI

struct HikingSumaryView: View {
    
    @EnvironmentObject var hikingManager: HikingManager
    
    var durationFormated: String {
        "\(Int((hikingManager.duration)/3600)):\(Int((hikingManager.duration)/60)%3600):\((Int((hikingManager.duration))%3600)%60)"
    }
    
    var totalDistance: String {
        "\(hikingManager.distance) km"
    }
    
    var calories: String {
        "\(hikingManager.activeEnergy)"
    }
    
    var heartRate: String {
        "\(Int(hikingManager.averageHeartRate)) BPM"
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 7) {
                SumaryInfo(infoTittle: "Tempo Total de Atividade",
                           info: durationFormated)
                
                Divider()
                
                SumaryInfo(infoTittle: "Distância Total",
                           info: totalDistance)
                
                Divider()
                
                SumaryInfo(infoTittle: "Calorias",
                           info: calories)
                
                Divider()
                
                SumaryInfo(infoTittle: "Batimento Card. Médio", info: heartRate)
                
                NavigationLink("Fechar", destination: HomeView().navigationBarBackButtonHidden(true))
                    .foregroundColor(Color(Constants.TurquoiseColor))
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
    static var hikingManager = HikingManager()
    static var previews: some View {
        HikingSumaryView()
            .environmentObject(hikingManager)
    }
}
