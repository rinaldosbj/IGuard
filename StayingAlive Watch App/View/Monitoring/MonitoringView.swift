//
//  MonitandoView.swift
//  StayingAlive Watch App
//
//  Created by rsbj on 29/11/22.
//

import SwiftUI
import HealthKit

struct MonitoringView: View {
    @EnvironmentObject var hikingManager : HikingManager
    
    var workoutType : HKWorkoutActivityType {
        didSet{
            hikingManager.selectedWorkout = workoutType
        }
    }
    
    @State var buttonName: String = "Pausar"
    @State var isMonitoring: Bool = true
    
    var body: some View {
        VStack(spacing: 15) {
                HStack{
                    Text("Monitorando")
                        .layoutPriority(1000)
                    
                    Spacer(
                    )
                    if isMonitoring {
                        ProgressView()
                            .foregroundColor((Color(Constants.TurquoiseColor)))
                            .frame(height: 20)
                    } else {
                        Spacer()
                        Image(systemName: "pause.fill")
                        Spacer()
                    }
                }.padding(.horizontal, 16)
                
                NavigationLink(destination: EmergencyView()) {
                    Text("Emergência")
                        .font(.headline)
                        .foregroundColor(.white)
                } .background(Color(Constants.TurquoiseColor))
                    .cornerRadius(15)
                
                HStack{
                    NavigationLink(destination: MonitoringSumaryView().environmentObject(hikingManager)) {
                        Text("Parar")
                    }
                    
                    Button(buttonName, action: {
                        if buttonName == "Pausar"{
                            buttonName = "Seguir"
                            hikingManager.togglePause()
                        } else {
                            buttonName = "Pausar"
                            hikingManager.togglePause()
                        }
                        isMonitoring.toggle()
                    }).buttonStyle(.borderedProminent)
                }
            }
        .navigationBarBackButtonHidden()
        }
    }
 


struct MonitandoView_Previews: PreviewProvider {
    static var hikingManager = HikingManager()
    static var previews: some View {
        MonitoringView(workoutType: .hiking)
            .environmentObject(hikingManager)
    }
}
