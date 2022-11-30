//
//  HomeView.swift
//  StayingAlive Watch App
//
//  Created by Lucas Migge de Barros on 29/11/22.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("is First Time") var isFirstTime = true
    @State private var shouldShow: Bool = false
    @State private var shouldShowEmergency: Bool = false
    @State private var shouldShowOnboarding: Bool = false
    var body: some View {
        NavigationStack{
            ZStack{
                NavigationLink("", destination: TransitionView().navigationBarBackButtonHidden(true) ,isActive: $shouldShow).buttonStyle(.borderless)
                    .onAppear(){
                        shouldShow = false
                    }
                NavigationLink("", destination: EmergencyView() ,isActive: $shouldShowEmergency).buttonStyle(.borderless)
                    .onAppear(){
                        shouldShowEmergency = false
                    }
                NavigationLink("", destination: PageView() ,isActive: $shouldShowOnboarding).buttonStyle(.borderless)
                    .onAppear(){
                        shouldShowOnboarding = false
                    }
                VStack {
                    VStack(spacing: 12) {
                        Button(action: {
                            shouldShowEmergency = true
                        }, label: {
                            Text("Emergência")
                                .font(.headline)
                                .foregroundColor(.white)
                        }) .background(Color(.blue))
                            .cornerRadius(15)
                        
                        
                        Button(action: {
                            shouldShow = true
                        }, label: {
                            Text("Monitorar")
                                .foregroundColor(.black)
                        }) .background(Color("xLightBlue"))
                            .cornerRadius(15)
                    }
                    
                    Spacer()
                    
                    HStack {
                        Button(action: {
                            shouldShowOnboarding = true
                        }) {
                            Image(systemName: "questionmark.circle")
                                .resizable()
                                .frame(width: 18.18, height: 18.18)
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            print("Clicou em mim")
                        }) {
                            Image(systemName: "c.circle")
                                .resizable()
                                .frame(width: 18.18, height: 18.18)
                        }
                        
                        
                    }.buttonStyle(.borderless)
                    
                }
                .padding(.top, 19)
                .padding(.bottom, -12)
                
                
            }.onAppear(){
                isFirstTime = false
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}