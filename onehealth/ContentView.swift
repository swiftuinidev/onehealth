//
//  ContentView.swift
//  onehealth
//
//  Created by David Buckley on 11/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var age: String = ""
    @State var weight: String = ""
    @State var height: String = ""
    var body: some View {
           ZStack{
           
                content
           }
               
           
    }
    
    var content : some View
        {
        VStack{
            
            
            Image("chart")
                .resizable()
                .scaledToFit()
             Text("Calorie Counter")
            
              TextField("Age", text: $age )
                            .textContentType(.emailAddress)
                            .padding(.init(top: 0, leading: 15, bottom:0 , trailing: 15))
                            .foregroundColor(.black)
                            .textFieldStyle(RoundedBorderTextFieldStyle.init())
            
            TextField("Weight", text: $weight)
                          .textContentType(.emailAddress)
                          .padding(.init(top: 0, leading: 15, bottom:0 , trailing: 15))
                          .foregroundColor(.black)
                          .textFieldStyle(RoundedBorderTextFieldStyle.init())
       
            TextField("Height", text: $height)
                          .textContentType(.emailAddress)
                          .padding(.init(top: 0, leading: 15, bottom:0 , trailing: 15))
                          .foregroundColor(.black)
                          .textFieldStyle(RoundedBorderTextFieldStyle.init())
       
         
         
            Button{}label:{
                             Text("Enter BMI")
                                 .font(.title)
                                 .fontWeight(.bold)
                                 .padding(.horizontal,24)
                                 .padding(.vertical,8)
                                 .background(.thinMaterial)
                                 .cornerRadius(20)
                         }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

