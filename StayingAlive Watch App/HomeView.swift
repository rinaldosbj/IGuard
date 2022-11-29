//
//  HomeView.swift
//  StayingAlive Watch App
//
//  Created by Lucas Migge de Barros on 29/11/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            
            VStack(spacing: 12) {
                Button(action: {
                    print("clicou em mim")
                }, label: {
                    Text("Emergência")
                        .font(.headline)
                        .foregroundColor(.white)
                }) .background(Color(.blue))
                    .cornerRadius(15)
                
                
                Button(action: {
                    print("clicou em mim 2")
                }, label: {
                    Text("Monitorar")
                        .foregroundColor(.black)
                }) .background(Color("xLightBlue"))
                    .cornerRadius(15)
            }
            
            Spacer()
            
            HStack {
                Button(action: {
                    print("Clicou em mim")
                }) {
                    Image(systemName: "exclamationmark.circle")
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
        

        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
