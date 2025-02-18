import SwiftUI

enum TabViews {
    case cronogramas
    case desempenho
    case provasAntigas
    case materias
}

struct TabBarView: View {
    @State var selectedView: TabViews = .cronogramas
    @State var goToCronograma = false
    
    @State var cronogramas: [String] = []

    var body: some View {
        NavigationStack {  // Envolve TabView com NavigationStack
            TabView(selection: $selectedView) {
                NewView(cronogramas: cronogramas)
                    .tabItem {
                        Label("Cronogramas", systemImage: "calendar")
                    }
                    .tag(TabViews.cronogramas)

                NewView2()
                    .tabItem {
                        Label("Desempenho", systemImage: "cellularbars")
                    }
                    .tag(TabViews.desempenho)

                NewView3()
                    .tabItem {
                        Label("Provas antigas", systemImage: "doc.plaintext")
                    }
                    .tag(TabViews.provasAntigas)
                
                NewView4()
                    .tabItem {
                        Label("Matérias", systemImage: "folder")
                    }
                    .tag(TabViews.materias)
                
            }
            .toolbar {
                if selectedView == .cronogramas {
                    ToolbarItem(placement: .topBarLeading) {
                        Text("Meus cronogramas")
                            .font(
                                Font.custom("SF Pro Rounded", size: 25)
                                    .weight(.semibold)
                            )
                    }
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Adicionar") {
                            goToCronograma = true
                        }
                    }
                }
            }
            .navigationDestination(isPresented: $goToCronograma) {
                CriarCronograma(cronogramas: $cronogramas)
            }
//            .navigationDestination(for: String.self) { value in
//                if value == "Cronograma" {
//                    CriarCronograma(cronogramas: <#Binding<[String]>#>)
//                }
//           }
        }
    }
}


#Preview {
    TabBarView()
}

