import SwiftUI

struct NewView7: View {
    @State private var navigateToNewView4 = false
    @State private var checkedItems: [String: Bool] = [:]
    @State private var searchText: String = ""
    
    let userDefaultsKey = "CheckedMatematica"
    
    var filteredTopicos: [String] {
        if searchText.isEmpty {
            return topicosMatematica
        } else {
            return topicosMatematica.filter { $0.lowercased().hasPrefix(searchText.lowercased()) }
        }
    }
    
    init() {
        loadCheckedItems()
    }
    
    var body: some View {
        ScrollView {
            // Botão de Voltar
//            Button(action: {
//                navigateToNewView4 = true
//            }) {
//                Text("Voltar")
//                    .font(.title3)
//                    .foregroundColor(.blue)
//                    .frame(maxWidth: .infinity, alignment: .leading)
//                    .padding()
//            }
            
            NavigationLink(destination: NewView4(), isActive: $navigateToNewView4) {
               EmptyView()
            }
            .hidden()
            
            Text("Matemática")
                .font(Font.custom("Arial", size: 30).weight(.semibold))
            
            VStack(alignment: .leading, spacing: 20) {
                // Barra de Pesquisa
                TextField("Buscar tópico", text: $searchText)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                    .padding([.leading, .trailing])
                
                // Lista de tópicos filtrados
                ForEach(filteredTopicos, id: \.self) { topico in
                    HStack {
                        Text(topico)
                            .font(Font.custom("Poppins", size: 20))
                            .foregroundColor(.black)
                        
                        Spacer()
                        
                        Button(action: {
                            toggleCheck(topico)
                        }) {
                            Image(systemName: checkedItems[topico] ?? false ? "checkmark.square.fill" : "square")
                                .resizable()
                                .frame(width: 18, height: 18)
                                .foregroundColor(.black)
                        }
                    }
                    .cornerRadius(5)
                }
            }
            .padding()
        }
        .background(Color(red: 0.98, green: 0.94, blue: 0.81))
//        .navigationBarHidden(true)
//        NavigationStack {
//            
//        }
    }
    
    // Alterna o estado do check e salva no UserDefaults
    func toggleCheck(_ topico: String) {
        checkedItems[topico] = !(checkedItems[topico] ?? false)
        saveCheckedItems()
    }
    
    // Salva os itens marcados no UserDefaults
    func saveCheckedItems() {
        UserDefaults.standard.setValue(checkedItems, forKey: userDefaultsKey)
    }
    
    // Carrega os itens marcados do UserDefaults
    func loadCheckedItems() {
        if let savedItems = UserDefaults.standard.dictionary(forKey: userDefaultsKey) as? [String: Bool] {
            checkedItems = savedItems
        }
    }
}

let topicosMatematica = [
    "Números Reais", "Equações de 1º Grau", "Equações de 2º Grau", "Funções",
    "Trigonometria", "Logaritmos", "Geometria Plana", "Geometria Espacial",
    "Probabilidade", "Estatística", "Matrizes", "Determinantes",
    "Progressões Aritméticas", "Progressões Geométricas", "Análise Combinatória"
]

#Preview {
    NavigationStack {
        NewView7()
    }
}

