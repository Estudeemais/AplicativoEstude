import SwiftUI

struct NewView8: View {
    @State private var navigateToNewView4 = false
    @State private var checkedItems: [String: Bool] = [:]
    @State private var searchText: String = ""
    
    let userDefaultsKey = "CheckedLinguagens"
    
    var filteredLinguagens: [String] {
        if searchText.isEmpty {
            return linguagens
        } else {
            return linguagens.filter { $0.lowercased().hasPrefix(searchText.lowercased()) }
        }
    }
    
    init() {
        loadCheckedItems()
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                // Botão de Voltar
//                Button(action: {
//                    navigateToNewView4 = true
//                }) {
//                    Text("Voltar")
//                        .font(.title3)
//                        .foregroundColor(.blue)
//                        .frame(maxWidth: .infinity, alignment: .leading)
//                        .padding()
//                }
                
                
                NavigationLink(destination: NewView4(), isActive: $navigateToNewView4) {
                   EmptyView()
                }
                .hidden()
                
                Text("Linguagens")
                    .font(Font.custom("Arial", size: 30).weight(.semibold))
                    //.padding(.top, 20)
                
                VStack(alignment: .leading, spacing: 20) {
                    // Barra de Pesquisa
                    TextField("Buscar linguagem", text: $searchText)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                        .padding([.leading, .trailing])
                    
                    // Lista de linguagens filtradas
                    ForEach(filteredLinguagens, id: \.self) { linguagem in
                        HStack {
                            Text(linguagem)
                                .font(Font.custom("Poppins", size: 20))
                                .foregroundColor(.black)
                            
                            Spacer()
                            
                            Button(action: {
                                toggleCheck(linguagem)
                            }) {
                                Image(systemName: checkedItems[linguagem] ?? false ? "checkmark.square.fill" : "square")
                                    .resizable()
                                    .frame(width: 18, height: 18)
                                    .foregroundColor(.black)
                            }
                        }
                        //.padding()
//                        .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                        .cornerRadius(5)
                    }
                }
                .padding()
            }
            .background(Color(red: 0.98, green: 0.94, blue: 0.81))
//            .navigationBarHidden(true)
        }
    }
    
    // Alterna o estado do check e salva no UserDefaults
    func toggleCheck(_ linguagem: String) {
        checkedItems[linguagem] = !(checkedItems[linguagem] ?? false)
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

let linguagens = [
    "Análise morfológica", "Sujeito e Predicado", "Vocativo", "Termos associados ao verbo",
    "Termos associados ao nome", "Concordância Verbal", "Concordância Nominal",
    "Orações subordinadas", "Regras de ortografia", "Regras de pontuação",
    "Regras de Acentuação", "Crase", "Variantes linguísticas",
    "Escolas literárias", "Figuras de linguagem"
]

#Preview {
    NavigationStack {
        NewView8()
    }
}

