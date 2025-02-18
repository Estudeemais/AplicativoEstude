import SwiftUI

struct NewView4: View {
    @State var goToMathView = false
    @State var goToLanguagesView = false
    
    var body: some View {
        ZStack {
            Text("Áreas de Conhecimento")
                .font(
                    Font.custom("SF Pro Rounded", size: 30)
                        .weight(.semibold)
                )
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
                .padding(.top, -360)
                .padding(.trailing, 60)
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 47.35849, height: 54.56092)
                .background(
                    Image("prancheta")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 47.35849380493164, height: 54.560916900634766)
                        .clipped()
                )
                .padding(.top, -400)
                .padding(.leading, 330)
                .padding(.top, 60)
            
            HStack(alignment: .center, spacing: 0) {
                Text("Matemática")
                    .font(Font.custom("Poppins", size: 24))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(width: 154, height: 32, alignment: .top)
            }
            .padding(.leading, 17)
            .padding(.trailing, 215)
            .padding(.vertical, 0)
            .frame(width: 386, height: 118, alignment: .leading)
            .background(Color(red: 0.64, green: 0.69, blue: 0.56))
            .cornerRadius(30)
            .padding(.top, -260)
            .onTapGesture {
                goToMathView = true
            }
            
            HStack(alignment: .center, spacing: 0) {
                Text("Linguagens")
                    .font(Font.custom("Poppins", size: 24))
                    .foregroundColor(.white)
                    .frame(width: 356, height: 32, alignment: .topLeading)
            }
            .padding(.leading, 13)
            .padding(.trailing, 17)
            .padding(.top, 27)
            .padding(.bottom, 59)
            .frame(width: 386, height: 118, alignment: .leading)
            .background(Color(red: 0.64, green: 0.69, blue: 0.56))
            .cornerRadius(30)
            .padding(.top, 440)
            .onTapGesture {
                goToLanguagesView = true
            }
        }
        .navigationDestination(isPresented: $goToMathView) {
            NewView7()
        }
        .navigationDestination(isPresented: $goToLanguagesView) {
            NewView8()
        }
        .frame(width: 430, height: 932)
        .background(Color(red: 0.98, green: 0.94, blue: 0.81))
    }
}

#Preview {
    NavigationStack {
        NewView4()
    }
}

