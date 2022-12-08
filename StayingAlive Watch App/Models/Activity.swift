//
//  Activity.swift
//  StayingAlive Watch App
//
//  Created by Lucas Migge de Barros on 05/12/22.
//

import Foundation
import SwiftUI
import HealthKit

struct Activity : Hashable {
    var name : Workout
    let imageString : String
    let workoutType : HKWorkoutActivityType
    
    var image : Image {
        Image(systemName: imageString)
    }
    
    enum Workout : String {
        case hiking = "Triha"
        case walking = "Caminhada"
        case runnig = "Corrida"
        case cicling = "Bicicleta"
        case climbing = "Escalada"
        case play = "Brincadeiras de rua"
        case skate = "Skate"
        case sailing = "Velejar"
        case swiming = "Nado"
        case surf = "Surf"
        case paddleSportrs = "Esportes com remo"
    }
}
