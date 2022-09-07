//
//  ContentView.swift
//  Portfolio APP 1
//
//  Created by Alejandro Pozo on 15/1/22.
//

import SwiftUI




struct ContentView: View {

    @State private var firstName = ""
    @State private var lastName = ""
    @State private var birthdate = Date()
    @State private var shouldSendNewsletter = false
    @State private var numberOfLikes = 1
    
    
    var body: some View {
        
        
            
            Form{
                
            Section {
                
                
                HStack{
                    ProfileImage(imageName: "imagenAlex")
                    NavigationLink("Alejandro Pozo Peris", destination:AlexView())
                        
               
                }
            }
            
            Section(header: Text("FEEDBACK"),
                    footer: Text("No te olvides de indicar si te ha gustado")){
                TextField("Tu nombre", text: $firstName)
                TextField("Opinión de la aplicación", text: $lastName)
                DatePicker("Cumpleaños", selection: $birthdate, displayedComponents:  .date)
            }
            Section(header: Text("opciones")){
                Toggle("Activar Notificaciones", isOn: $shouldSendNewsletter)
                    .toggleStyle(SwitchToggleStyle(tint: .red))
                Stepper("Sumar años", value: $numberOfLikes, in: 1...100)
                Text("Años Cumplidos \(numberOfLikes) ")
                
            }
            Section(header: Text("Redes Sociales")){
                HStack{
                    Image(systemName:"link")
                        .foregroundColor(.green)
                    Link("Github", destination: URL(string: "https://github.com/Alexpo95")!);
                
                }
                
            Section{
                    HStack{
                        Image(systemName:"link")
                            .foregroundColor(.blue)
                        Link("LinkdeIn", destination: URL(string: "https://www.linkedin.com/in/alejandropozoperis/")!);
                    }
                }.accentColor(.blue)
                
            
        }
        .accentColor(.green)
        .navigationTitle("Portfolio")
        
            
            }
        
        
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    

}

struct ProfileImage: View {
    
    var imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: 50, height: 50)
            
    }
}


#if canImport(UIkit)
extension View {
    func hideKeyboard(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to:nil, from: nil, for: nil)
    }
}
#endif
    
 
