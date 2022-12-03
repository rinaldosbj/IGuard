//
//  MonitandoView.swift
//  StayingAlive Watch App
//
//  Created by rsbj on 29/11/22.
//

import SwiftUI

struct MonitandoView: View {
    @StateObject var hikingManager = HikingManager()
    @State var buttonName: String = "Pausar"
    @State var isMonitoring: Bool = true
    @State var shouldShow = false
    
    var body: some View {
        ZStack{
            NavigationLink("", destination: HikingSumaryView().environmentObject(hikingManager).navigationBarBackButtonHidden(true) ,isActive: $shouldShow).buttonStyle(.borderless)
            
            VStack(spacing: 10) {
                HStack{
                    Text("Monitorando")
                        .layoutPriority(1000)
                    if isMonitoring {
                        ProgressView()
                            .foregroundColor((Color(Constants.TurquoiseColor)))
                            .frame(height: 20)
                    } else {
                        Spacer()
                        Image(systemName: "pause.fill")
                        Spacer()
                    }
                }
                
                NavigationLink(destination: EmergencyView()) {
                    Text("Emergência")
                        .font(.headline)
                        .foregroundColor(.white)
                } .background(Color(Constants.TurquoiseColor))
                    .cornerRadius(15)
                
                HStack{
                    Button("Parar", action: {
                        hikingManager.endWorkout()
                        shouldShow.toggle()
                        
                    })
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
            }.onAppear(){
                hikingManager.startWorkout(workoutType: .hiking)
            }
        }
    }
}


struct MonitandoView_Previews: PreviewProvider {
    static var previews: some View {
        MonitandoView()
    }
}
