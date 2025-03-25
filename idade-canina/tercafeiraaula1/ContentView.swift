import SwiftUI

struct ContentView: View {
    @State private var humanAge: String = ""
    @State private var dogAge: String = ""
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Image("cachorro")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text("Calculadora de Idade Canina")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                TextField("Digite a idade humana", text: $humanAge)
                    .keyboardType(.numberPad)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .frame(width: 250)
                
                Button(action: calculateDogAge) {
                    Text("Calcular")
                        .padding()
                        .frame(width: 150)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                Button(action: apagar) {
                    Text("Apagar")
                        .padding()
                        .frame(width: 150)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                if !dogAge.isEmpty {
                    Text("A idade em anos caninos é: \(dogAge)")
                        .font(.headline)
                        .padding()
                        .foregroundColor(.white)
                }
            }
        }
    }
    
    func calculateDogAge() {
        if let age = Int(humanAge) {
            let result = age * 7
            dogAge = "\(result) anos"
        } else {
            dogAge = "Digite um número válido!"
        }
    }
    func apagar() {
        
            dogAge = " "
    }
}
