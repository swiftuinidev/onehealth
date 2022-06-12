//
//  CaloriesView.swift
//  onehealth
//
//  Created by David Buckley on 11/06/2022.
//

import SwiftUI

struct CaloriesView: View {
    var body: some View {
        VStack(alignment: .center) {
              VStack(alignment: .leading) {
                  Text("Calories")
                      .font(.system(.largeTitle))
                      .foregroundColor(.white)
                  Text("Remaining = Goal - Food + Exercise")
                      .foregroundColor(.white)
              }
              
              DataView()
          }
          .padding()
          .background(Color.init(white: 0.05))
          .cornerRadius(16)
          .shadow(color: .black, radius: 5, x: 0, y: 0)
      }
     
    }


struct CaloriesView_Previews: PreviewProvider {
    static var previews: some View {
        CaloriesView()
    }
}
