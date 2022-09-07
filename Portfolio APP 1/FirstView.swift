//
//  FirstView.swift
//  Portfolio APP 1
//
//  Created by Alejandro Pozo on 19/1/22.
//

import SwiftUI



struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}






struct FirstView: View {
    
    
  //@State  var favorite: Bool (mirar como hacer bien que se rellene la estrella)
 
    
    var body: some View {
        
        NavigationView{
            
        ZStack{
            
            LinearGradient(
                colors: [Color("BG1"),Color(red: 0.4627, green: 0.8392, blue: 1.0)],
                startPoint: .top,
                endPoint: .bottom)
                .ignoresSafeArea()
            
            //Gloss Background
            
            GeometryReader{proxy in
                
                let size = proxy.size
                
                Color.black
                    .opacity(0.7)
                    .blur(radius: 200)
                    .ignoresSafeArea()
                    
                
                Circle()
                    .fill(Color(.white))
                    .padding(50)
                    .blur(radius:120)
                
                // Moving Top
                
                    .offset(x: -size.width / 1.8, y: -size.height / 5)
                
                Circle()
                    .fill(Color("BG1"))
                    .padding(50)
                    .blur(radius:150)
                    .offset(x: -size.width / 1.8, y: -size.height / 2)
                
                // Moving Top
                
                    
                
                
                // Adding Purple on both bottom ends
                
                
            }
            
        
        // Content
            
            
            VStack{
                
                    Spacer(minLength: 10)
                
                //GlassMorphin
                
                GlassMorpicCard()
                
                
                Spacer(minLength:10)
                
                Text("Alejandro Pozo Peris")
                    .font(.system(size: 40, weight: .bold))
                    .padding()
                    
                
                
                Text(getAtributedString())
                    .fontWeight(.semibold)
                    .kerning(1.1)
                    .padding(.top,50)
                
                
            //Button
                
            
                
                     
            Button{
                    
                
            
                    
                    
                } label: {
                
                    NavigationLink("Comenzar", destination: ContentView())
            
                        .font(.title3.bold())
                        .padding(.vertical,22)
                        .frame(maxWidth: .infinity)
                        .background(
                            
                        .linearGradient(.init(colors: [
                        
                        Color("AzulClaro"),
                        Color("Azulotro"),
                        
                        ]), startPoint: .leading, endPoint: .trailing)
                    
                        ,in: RoundedRectangle(cornerRadius: 20)
                    
                    )
                }
                .padding(.horizontal,30)
                .padding(.vertical,50)
                
                Button {
                    
                    
                } label: {
                   
                    }
                }
                .padding(.bottom)
                
            
                
                }
            
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            .navigationBarTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
            .ignoresSafeArea(.all)
            
            
            
        
        }
        
    }
    }

    // AttributeString from ios 15
    
    
    
    func getAtributedString()->AttributedString{
        
        var attStr = AttributedString("Te doy la bienvenida a mi primera aplicación")
        attStr.foregroundColor = .white
        
        // converting only "local weather"
        
        if let range = attStr.range(of: "local wather"){
            
            // changing into white
        
            attStr[range].foregroundColor = .white
            
       }
    
        return attStr
    }


struct GlassMorpicCard: View {
    
    var body: some View{
        
        let width = UIScreen.main.bounds.width
        
        ZStack{
            
            RoundedRectangle(cornerRadius:25)
                .fill(.white)
                .opacity(0.1)
                .background(
                
                    Color.white
                        .opacity(0.08)
                        .blur(radius:10)
                )
            
            //Strokes
                .background(
                
                    RoundedRectangle(cornerRadius:25)
                        .stroke(
                        
                            .linearGradient(.init(colors:[
                            
                                Color(.white),
                                Color(red: 0.4627, green: 0.8392, blue: 1.0).opacity(0.5),
                            .clear,
                            .clear,
                                Color(.white),
                           ]), startPoint: .topLeading, endPoint: .bottomTrailing)
                            ,lineWidth: 2.5
                        )
                        .padding(2)
            )
            
            VStack{
                
                Image("AlexnoBG").resizable().frame(width:300,
                                                    height:300)
            }
            
        }
        .frame(width: width / 1.7, height:270)
        
    }
}
    





