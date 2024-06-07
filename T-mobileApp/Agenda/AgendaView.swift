//
//  AgendaView.swift
//  T-mobileApp
//
//  Created by venkateswarlu.o on 22/05/24.
//

import SwiftUI
struct AgendaView:View {
    @ObservedObject var viewModel = AgendaViewModel()
    var body: some View {
        List(viewModel.agendaItems,id:\.title){ item in
            HStack{
                Image("")
                    .resizable()
                    .frame(width: 50,height: 50)
                VStack{
                    Text("\(item.startTime) - \(item.endTime)")
                        .font(.headline)
                    
                    Text(item.title)
                        .font(.title2)
                        .foregroundColor(.blue)
                    
                    Text(item.description)
                        .font(.subheadline)
                }
            }
            
        }
    }
}
#Preview{
    AgendaView()
}
