//
//  BMIView.swift
//  onehealth
//
//  Created by David Buckley on 11/06/2022.
//

import SwiftUI


struct BMIView: View {
    var body: some View {
           ZStack{
            Color(#colorLiteral(red: 0.06426735233, green: 0.007159079822, blue: 0.07578741644, alpha: 0.8470588235))
                   .ignoresSafeArea()
               content
           }
               
           
       }
        
        
        var content : some View
            {
                
        VStack{
            Color.purple
                            .ignoresSafeArea()
            Button{ }label:{
                             Text("Enter Bmi")
                                 .font(.title)
                                 .fontWeight(.bold)
                                 .padding(.horizontal,24)
                                 .padding(.vertical,8)
                                 .background(.thinMaterial)
                                 .cornerRadius(20)
            }.padding(10)
                .background(Color.purple)

            
        }.padding(20)
            .background(Color.purple)
            .navigationTitle(Text("Style"))

            }

struct BMIView_Previews: PreviewProvider {
    static var previews: some View {
        BMIView()
    }
}
}
 

