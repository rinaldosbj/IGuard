//
//  MonitoringOptions.swift
//  StayingAlive Watch App
//
//  Created by Lucas Migge de Barros on 05/12/22.
//

import SwiftUI
import HealthKit

struct MonitoringOptions: View {
    @EnvironmentObject var hikingManager : HikingManager
    
    let activities : [Activity] = Populate.getActivities()
    
    var body: some View {
        
        List(activities, id: \.self) { activity in
            NavigationLink(destination: MonitandoView()) {
                Button(action: {
                    hikingManager.selectedWorkout = activity.workoutType
                }) {
                    HStack{
                        Text(activity.name.rawValue)
                            .font(.headline)
                            .foregroundColor(.accentColor)
                        Spacer()
                        activity.image
                            .resizable()
                            .frame(width: 25, height: 20)
                            .padding(.trailing)
                            .foregroundColor(.accentColor)

                    }
                }
            }
            .navigationTitle("Atividade")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct MonitoringOptions_Previews: PreviewProvider {
    static var previews: some View {
        MonitoringOptions()
    }
}
