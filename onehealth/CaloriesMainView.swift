//
//  CaloriesMainView.swift
//  onehealth
//
//  Created by David Buckley on 12/06/2022.
//

import SwiftUI

struct DataView: View {
    var body: some View {
        HStack(spacing: 50) {
            CircleView()
            
            VStack(alignment: .leading) {
                TagView(
                    image: .init(systemName: "flag.fill"),
                    color: .white,
                    title: "Base Goal",
                    number: 2300
                )
                
                TagView(
                    image: .init(systemName: "fork.knife"),
                    color: .blue,
                    title: "Food",
                    number: 0
                )
                
                TagView(
                    image: .init(systemName: "flame.fill"),
                    color: .orange,
                    title: "Exercise",
                    number: 0
                )
            }
        }
    }
    
    
}
struct TagView: View {
    let image: Image
    let color: Color
    let title: String
    let number: Int
    
    var body: some View {
        HStack {
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(color)
                .frame(width: 20, height: 30, alignment: .center)
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.system(.subheadline))
                    .foregroundColor(.white)
                Text("\(number)")
                    .font(.system(.headline))
                    .foregroundColor(.white)
            }
        }
    }
}
struct CircleView: View {
    var body: some View {
        ZStack {
            Circle()
                .stroke(
                    AngularGradient(colors: [.red, .green, .blue, .red], center: .init(x: 0.5, y: 0.5)),
                    lineWidth: 5
                )
                .frame(width: 100, height: 100, alignment: .center)
            
            VStack(alignment: .center) {
                Text("2300")
                    .font(.system(.title))
                    .foregroundColor(.white)
                
                Text("Remaining")
                    .font(.system(.caption))
                    .foregroundColor(.white)
            }
        }
    }
}
 
