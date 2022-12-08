//
//  HomeView.swift
//  StayingAlive Watch App
//
//  Created by Lucas Migge de Barros on 29/11/22.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var hikingManager = HikingManager()
    @EnvironmentObject var persistence : Persistence
    @State var showingOnboarding = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 12) {
                Spacer()
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(Color(Constants.TurquoiseColor))
                    NavigationLink(destination: EmergencyView()) {
                        Text("Emergência")
                            .font(.headline)
                            .foregroundColor(.white)
                    }
                    .buttonStyle(.borderless)
                    .background(Color(Constants.TurquoiseColor))
                    .cornerRadius(15)
                    .frame(height: 50)
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(lineWidth: 1 )
                        .foregroundColor(Color(Constants.TurquoiseColor))
                    NavigationLink(destination: MonitoringOptions().environmentObject(hikingManager)
                    ) {
                        Text("Monitorar")
                            .foregroundColor(.white)
                    }
                    .buttonStyle(.borderless)
                    .cornerRadius(15)
                }.frame(height: 50)
                
                Spacer()
                
                HStack {
                    NavigationLink(destination: HelpView()) {
                        Image(systemName: "questionmark.circle")
                            .resizable()
                            .frame(width: 18.18, height: 18.18)
                    }
                    
                    
                    Spacer()
                    
                    // deve chamar o credits
                    NavigationLink(destination: CreditsView()) {
                        Image(systemName: "c.circle")
                            .resizable()
                            .frame(width: 18.18, height: 18.18)
                    }
                    
                }.buttonStyle(.borderless)
                
            }
            .padding(.top, 19)
            .padding(.bottom)
            .padding(.horizontal)
            .navigationTitle("iGuard")
            .navigationBarTitleDisplayMode(.inline)
        }
        .onAppear {
            hikingManager.requestAuthorization()
            persistence.isFirstTime = "no"
            
        }
    }
}




struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(HikingManager())
            .environmentObject(Persistence())
        
    }
}
