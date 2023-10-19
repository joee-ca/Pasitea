//
//  CalmBreatheView.swift
//  Negroni
//
//  Created by Guillaume Coquard on 17/10/23.
//

import SwiftUI

struct CalmBreatheView: View {
    var cs: CGFloat = 160
    func iCS(_ cs: CGFloat,_ multiplier: CGFloat) -> CGFloat
    {
        return cs + 28 * multiplier
    }
    //MARK BODY
    var body: some View {
            ZStack() {
                Color.blue.opacity(0.2).edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    Image (systemName: "aqi.medium")
                        .font(.system(size: 75))
                        .multilineTextAlignment(.center)
                        .kerning(-0.3)
                        .fontDesign(.rounded)
                        .fontWeight(.bold)
                        .padding([.top,.bottom], 10)
                        .padding([.leading,.trailing], 20)
                        .frame(width:cs,height:cs)
                        .background(Color.clear)
                        .foregroundColor(Color.white)
                        .cornerRadius(.infinity)
                        .background {
                            ZStack {
                                Circle()
                                    .frame(width:iCS(cs,1),height:iCS(cs,1))
                                    .opacity(0.25)
                                Circle()
                                    .frame(width:iCS(cs,2),height:iCS(cs,2))
                                    .opacity(0.25)
                                Circle()
                                    .frame(width:iCS(cs,3),height:iCS(cs,3))
                                    .opacity(0.25)
                                
                                
                                
                                
                            }
                            
                            
                        }
                        .padding(50)
                    HStack {
                        
                        Text("Breathe")
                            .font(.largeTitle)
                        
                        
                    }
                    .padding(.bottom, 8)
                    
                    
                    
                    HStack {
                        Image(systemName: "clock.fill")
                        
                        
                        Text("03:00")
                            .font(
                                Font.custom("SF Pro", size: 18)
                                    .weight(.semibold)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                    }
                    //.navigationTitle("Breathe")
                    //.navigationBarTitleDisplayMode(.inline)
                }
            }
        }
    }
        
        #Preview {
            CalmBreatheView()
        }
