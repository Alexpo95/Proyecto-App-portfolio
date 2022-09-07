//
//  AlexView.swift
//  Portfolio APP 1
//
//  Created by Alejandro Pozo on 16/1/22.
//

import SwiftUI

struct AlexView: View {
    var body: some View {

            ZStack {
                
                LinearGradient(colors: [Color.yellow.opacity(0.7), Color.cyan.opacity(0.7)], startPoint: . topLeading, endPoint:
                                    .bottomTrailing
                                )
            
        

                VStack(spacing: 0.0){
            Image("imagenAlex").resizable().frame(width:200,
                                                  height:200).clipShape(Circle()).overlay(Circle().stroke(Color.blue, lineWidth:4)).shadow(color:Color.gray,
                                                                                                                                           radius:5)
            Text("Alejandro Pozo Peris").font(.largeTitle)
            Text("Swift - SwiftUI").font(.title)
            
                                                                                                                        
                }
                .padding(.bottom, 350)
                
        
            }.edgesIgnoringSafeArea(.all)
    }
}










        
        
struct AlexView_Previews: PreviewProvider {
    static var previews: some View {
        AlexView()
    }
}

