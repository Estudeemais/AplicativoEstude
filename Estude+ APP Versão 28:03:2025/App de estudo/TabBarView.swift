import SwiftUI

enum TabViews {
    case cronogramas
    case desempenho
    case provasAntigas
    case materias
}

struct Cronograma: Identifiable, Hashable {
    let id = UUID()
    let nome: String
    let dataTermino: Date
    let diasDaSemana: [String]
    let materias: [String]
}

struct TabBarView: View {
    @State var selectedView: TabViews = .cronogramas
    @State var goToCronograma = false
    @State var cronogramas: [Cronograma] = []

    var body: some View {
        TabView(selection: $selectedView) {
            NewView(cronogramas: cronogramas)
                .tabItem {
                    Label("Cronogramas", systemImage: "calendar")
                        .foregroundColor(Color(red: 0.19, green: 0.08, blue: 0.02)) // Altere para a cor desejada
                }
                .tag(TabViews.cronogramas)
                .tint(.black)

            NewView2()
                .tabItem {
                    Label("Desempenho", systemImage: "cellularbars")
                        .foregroundColor(Color(red: 0.19, green: 0.08, blue: 0.02)) // Altere para a cor desejada
                }
                .tag(TabViews.desempenho)

            NewView3()
                .tabItem {
                    Label("Provas antigas", systemImage: "doc.plaintext")
                        .foregroundColor(Color(red: 0.19, green: 0.08, blue: 0.02)) // Altere para a cor desejada
                }
                .tag(TabViews.provasAntigas)
            
            NewView4()
                .tabItem {
                    Label("Matérias", systemImage: "folder")
                        .foregroundColor(Color(red: 0.19, green: 0.08, blue: 0.02)) // Altere para a cor desejada
                }
                .tag(TabViews.materias)
            
        }
        .toolbar {
            if selectedView == .cronogramas {
                ToolbarItem(placement: .principal) {
                    Text("Meus cronogramas")
                        .font(
                            Font.custom("SF Pro Rounded", size: 25)
                                .weight(.semibold)
                        )
                        .foregroundColor(Color.black)
                        .padding(.leading, -160)
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("Adicionar") {
                        goToCronograma = true
                    }
                    .foregroundColor(Color(red: 0.5, green: 0.58, blue: 0.45))
                }
            }
        }
        .navigationDestination(isPresented: $goToCronograma) {
            CriarCronograma(cronogramas: $cronogramas)
        }
//        NavigationStack {
//
//        }
    }
}

#Preview {
    TabBarView()
}

