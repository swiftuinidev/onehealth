//
//  CaloriesView.swift
//  onehealth
//
//  Created by David Buckley on 11/06/2022.
//

import SwiftUI

struct CaloriesView: View {
    var body: some View {
        ZStack  {
            ProgressRingView()
        }
        
        ZStack{
 
            Label("Base Goals", systemImage: "folder.circle").font(.system(size: 30))
        }
        
        HStack{
            
            Label("Daily Limit", systemImage: "flag.fill").font(.system(size: 30))
            
            Label("Food", systemImage: "fork.knife").font(.system(size: 30))
        }
        HStack{
            Label("Exercise Taken", systemImage: "flag.fill").font(.system(size: 30))
            
            Button{
                CallWebApi()
                
            }label:{
                             Text("Login")
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

struct CaloriesView_Previews: PreviewProvider {
    static var previews: some View {
        CaloriesView()
    }
}
