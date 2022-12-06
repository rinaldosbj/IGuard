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
    
    let activitiesTypes : [HKWorkoutActivityType] = [.hiking, .running, .walking]
    
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct MonitoringOptions_Previews: PreviewProvider {
    static var previews: some View {
        MonitoringOptions()
    }
}
