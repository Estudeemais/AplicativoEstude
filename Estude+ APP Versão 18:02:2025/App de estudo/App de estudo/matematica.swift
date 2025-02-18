import SwiftUI

struct NewView7: View {
    @State private var checkedItems: [String: Bool] = [:]
    @State private var searchText: String = ""
    
    var filteredMaterias: [String] {
        if searchText.isEmpty {
            return materias
        } else {
            return materias.filter { $0.lowercased().hasPrefix(searchText.lowercased()) }
        }
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    
                    
                    NavigationLink(destination: NewView4()) {
                        Text("Voltar")
                            .font(.title3)
                            .foregroundColor(.blue)
                            .padding()
                    }
                    .padding([.leading, .trailing])
                    
                
                    TextField("Buscar matéria", text: $searchText)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                        .padding([.leading, .trailing])
                    
                    Text("Matemática")
                        .font(Font.custom("Arial", size: 30).weight(.semibold))
                        .padding(.top, 20)
                        .padding(.leading, 100)
                    
                    
                    ForEach(filteredMaterias, id: \.self) { materia in
                        HStack {
                            Text(materia)
                                .font(Font.custom("Poppins", size: 20))
                                .foregroundColor(.black)
                            
                            Spacer()
                            
                            Button(action: {
                                checkedItems[materia] = !(checkedItems[materia] ?? false)
                            }) {
                                Image(systemName: checkedItems[materia] ?? false ? "checkmark.square.fill" : "square")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(.blue)
                            }
                        }
                        .padding()
                        .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                        .cornerRadius(10)
                    }
                }
                .padding()
            }
            .background(Color(red: 0.98, green: 0.94, blue: 0.81))
        }
        .navigationTitle("Matemática")
        .navigationBarBackButtonHidden(true)
    }
}

let materias = [
    "Potenciação e Radiciação", "MMC e MDC", "Polinômios", "Equação de 1º e 2º grau",
    "Razão e proporção", "Interpretação de gráfico", "Progressão aritmética",
    "Conjuntos numéricos", "Introdução a funções", "Função do 1º e 2º grau",
    "Função exponencial", "Função logarítmica", "Transformações de gráficos",
    "Matemática financeira", "Trigonometria no triângulo retângulo",
    "Equações trigonométricas"
]

struct NewView7_Previews: PreviewProvider {
    static var previews: some View {
        NewView7()
            .previewDevice("iPhone 13") // Ajuste para o dispositivo desejado
    }
}

