//
//  MonitandoView.swift
//  StayingAlive Watch App
//
//  Created by rsbj on 29/11/22.
//

import SwiftUI

struct MonitandoView: View {
    @State private var shouldShowEmergency: Bool = false
    var body: some View {
        ZStack{
            NavigationLink("", destination: EmergencyView().navigationBarBackButtonHidden(true) ,isActive: $shouldShowEmergency).buttonStyle(.borderless)
            VStack {
                VStack(spacing: 10) {
                    Button(action: {
                        shouldShowEmergency = true
                    }, label: {
                        Text("Emergência")
                            .font(.headline)
                            .foregroundColor(.white)
                    }) .background(Color(.blue))
                        .cornerRadius(15)
                    
                    HStack{
                        Button(action: {
                            print("aa")
                        }, label: {
                            Text("Parar")
                                .foregroundColor(.black)
                        }) .background(Color("xLightBlue"))
                            .cornerRadius(15)
                        Text("5:50")
                            .padding(.horizontal,24)
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 8, style: .continuous)
                        HStack{
                            RoundedRectangle(cornerRadius: 8, style: .continuous)
                                .frame(width: 30)
                                .foregroundColor(Color("xLightBlue"))
                            Spacer()
                        }
                    }.padding(.bottom,8)
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
}

struct MonitandoView_Previews: PreviewProvider {
    static var previews: some View {
        MonitandoView()
    }
}
