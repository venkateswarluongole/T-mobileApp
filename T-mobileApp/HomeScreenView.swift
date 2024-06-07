import SwiftUI
struct HomeScreenView:View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("shakeHandImg")
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: UIScreen.main.bounds.width)
                    .ignoresSafeArea()
                    .overlay {
                        Color(.pink).opacity(0.8)
                            .frame(maxWidth: .infinity, maxHeight: .infinity) // Fill the entire screen
//                            .edgesIgnoringSafeArea(.all) // Ignore safe area to cover entire screen
                    }
                    .edgesIgnoringSafeArea(.all)

                VStack(alignment:.leading){
                    headerView()
                    Spacer()
                    HStack(alignment:.center){
                        buttonView()
                            .padding(.top)
                        Text("Let's Help you Navigate your next")
                            .font(.system(size: 50))
                            .foregroundStyle(.white)
                            .bold()
                            .padding(.leading)
                    }
                    Spacer()
                    footerView()
                }
                .toolbar(.hidden,for:.navigationBar)
                .frame(maxHeight: .infinity)
                .padding(.horizontal)
            }
        }
    }
    private func headerView()-> some View{
        HStack{
            Image("InfyImg")
                .resizable()
                .scaledToFit()
                .frame(width:150,height: 150)
                .padding(.leading)
            Spacer()
            Image("T-mobileImg")
                .resizable()
                .scaledToFit()
                .frame(width: 250,height: 250)
                
        }
    }
    private func buttonView()->some View{
        VStack{
            generateButtonRow(for:[.agenda,.aboutus])
            generateButtonRow(for:[.gallery,.triviaQuestions])
        }
    }
    private func generateButtonRow(for buttonTypes:[ButtonType]) -> some View{
        HStack{
            ForEach(buttonTypes,id:\.self){
                type in
                NavigationLink(destination: type.destination){
                    button(title:type.title)
                }
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 150)
    }
    private func button(title:String)->some View{
        RoundedRectangle(cornerRadius: 16)
            .foregroundColor(.white)
            .overlay{
                Text(title)
                    .foregroundStyle(.black)
            }
    }
    private func footerView()-> some View{
        VStack{
            Text("Date and Time : 16th may 1:42PM")
            Text("Location:Hyderabad DC India")
                .foregroundStyle(.white)
                .font(.caption)
                .frame(maxWidth: .infinity,alignment: .center)
        }
    }
    
}
#Preview {
    HomeScreenView()
}
