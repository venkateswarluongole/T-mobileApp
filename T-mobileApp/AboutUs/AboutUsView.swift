//
//  AboutUsView.swift
//  AccelerateTask
//
//  Created by venkateswarlu.o on 21/05/24.
//

import SwiftUI
struct AboutUsView:View {
    @StateObject private var viewModel = CardViewModel()
    var body: some View {
        ScrollView{
            LazyVGrid(columns:[GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())],spacing:20){
                ForEach(viewModel.cards){ cards in
                    CardView(card: cards)
                        .padding(.leading)
                        .padding(.trailing)
                }
            }
           .padding()
        }
    }
}
struct CardView:View {
    let card:CardItem
    @State private var showModal = false
    var body: some View {
        VStack{
            Image(card.image)
                .resizable()
                .aspectRatio(1.0,contentMode: .fit)
                .frame(height: 200)
                .clipShape(Circle())
                .padding(3)
            Text(card.title)
                .font(.title)
                .padding(3)
                .bold()
            Text(card.designation)
                .font(.title2)
                .padding(3)
            Text(card.description)
                .font(.subheadline)
                .lineLimit(5)
                .multilineTextAlignment(.leading)
            
            HStack{
                Image("twitter")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                Image("fb")
                    .resizable()
                    .frame(width: 50, height: 50)
                Image("insta")
                    .resizable()
                    .frame(width: 35, height: 35)
                    .clipShape(Circle())
            }
        }
        .aspectRatio(1.0,contentMode: .fit)
        .padding(.leading,30)
        .padding(.trailing,30)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
        .onTapGesture {
            showModal = true
      }.sheet(isPresented:$showModal){
           CardDetailsView(card:card)
      }
    }
}
struct CardDetailsView:View {
    let card:CardItem
    var body: some View {
        VStack(alignment: .leading){
                ZStack(alignment:.leading){
                    Image("backImg2")
                        .resizable()
                        .frame(width: 650,height: 200)
                        .aspectRatio(contentMode: .fill)
                        .opacity(0.7)
                        .cornerRadius(7)
                        .scaledToFit()
                        .overlay(
                            Image(card.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 150)
                                .clipShape(Circle())
                                .scaledToFit()
                                .offset(x:70,y:70)
                                .alignmentGuide(.bottom) { dimention in
                                    dimention.height
                                }
                                .alignmentGuide(.leading){ dimension in
                                    dimension[.bottom]
                                }
                        )
                }
                .padding()
                Text(card.title)
                    .font(.title)
                    .padding(3)
                    .padding(.leading,30)
                    .bold()
//                    .background(Color.white)
//                    .cornerRadius(10)
//                    .shadow(radius: 10)
                Text(card.designation)
                    .font(.title2)
                    .padding(3)
                    .padding(.leading,30)
//                    .background(Color.white)
//                    .cornerRadius(10)
//                    .shadow(radius: 10)
                Text(card.description)
                    .font(.body)
                    .padding(.leading,30)
                    .lineLimit(6)
                    .multilineTextAlignment(.leading)
//                    .background(Color.white)
//                    .cornerRadius(10)
//                    .shadow(radius: 10)
                Spacer()
            }
          .padding(20)
//          .padding(.all,10)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 10)
            .edgesIgnoringSafeArea(.all)
        }
    }
#Preview {
    AboutUsView()
}
