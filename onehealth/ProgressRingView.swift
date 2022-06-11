//
//  ProgressRingView.swift
//  onehealth
//
//  Created by David Buckley on 11/06/2022.
//

import SwiftUI
struct ProgressRingView: View {
    @State var progress = 0.0
    let colors: [Color] = [.yellow, .red,.blue, .purple]

    var body: some View {
            ZStack{
                // MARK:Place Holder Ring
                Circle()
                    .stroke(lineWidth: 20)
                    .foregroundColor(.gray)
                    .opacity(0.1)
                
                // MARK: Colored Ring
                Circle()
                    .trim(from: 0.0, to: min(progress,1.0))
                    .stroke(  AngularGradient(gradient: Gradient(colors: colors), center: .center,startAngle: .degrees(0), endAngle: .degrees(360 + 45)) ,style: StrokeStyle(lineWidth: 15, lineCap: .round, lineJoin: .round))
                    .rotationEffect((Angle(degrees: 270)))
                    .animation(.easeInOut(duration: 1.0),value:progress)
                    .onAppear{
                        progress=1
                    }
                
                VStack(spacing:30)
                {
                    //MARK : Elapsed Time
                    
                    VStack(spacing:5)
                    {
                        Text("Calories")
                            .opacity(0.7)
                    }
                    .padding(.top)
                    
                    //MARK :Remiaing Time
                    
                    VStack(spacing:5)
                    {
                        Text("Rmaining ")
                            .opacity(0.7)
                        
                        Text("0:00")
                            .font(.title2)
                            .fontWeight(.bold)
                    }
                }
            }
            .frame(width: 250, height: 250)
            .padding()
                            }
                            }
                            
                struct ProgressRingView_Previews: PreviewProvider {
        static var previews: some View {
            ProgressRingView()
        }
    }
