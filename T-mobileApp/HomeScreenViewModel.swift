//
//  HomeScreenViewModel.swift
//  T-mobileApp
//
//  Created by venkateswarlu.o on 20/05/24.
//

import SwiftUI
enum ButtonType{
    case agenda
    case aboutus
    case gallery
    case triviaQuestions
     
    var title :String{
        switch self{
        case .agenda:
            return "Agenda"
        case .aboutus:
            return "AboutUs"
        case .gallery:
            return "Gallery"
        case .triviaQuestions:
            return "TriviaQuestions"
        }
    }
    
    var destination:AnyView{
        switch self{
        case .agenda:
            return AnyView(AgendaView())
        case .aboutus:
            return AnyView(AboutUsView())
        case .gallery:
            return AnyView(GalleryScreen())
        case .triviaQuestions:
            return AnyView(TriviaQuestionsView())
        }
    }
}
