//
//  HomeView.swift
//  StayingAlive Watch App
//
//  Created by Lucas Migge de Barros on 29/11/22.
//

import SwiftUI

struct HomeView: View {
    
    
    var body: some View {
        NavigationView{
            
            VStack(spacing: 12) {
                NavigationLink(destination: EmergencyView()) {
                    Text("Emergência")
                        .font(.headline)
                        .foregroundColor(.white)
                }
                .background(Color(.blue))
                .cornerRadius(15)
                
                NavigationLink(destination: MonitandoView()) {
                    Text("Monitorar")
                        .foregroundColor(.black)
                }
                .background(Color("xLightBlue"))
                .cornerRadius(15)
                
                Spacer()
                
                HStack {
                    NavigationLink(destination: PageView()) {
                        Image(systemName: "questionmark.circle")
                            .resizable()
                            .frame(width: 18.18, height: 18.18)
                    }
                    Spacer()
                    
                    // deve chamar o credits
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
            .navigationTitle("IGuard")
        }
    }
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
