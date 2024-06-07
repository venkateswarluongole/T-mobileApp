//
//  AgendaViewModel.swift
//  T-mobileApp
//
//  Created by venkateswarlu.o on 23/05/24.
//

import SwiftUI

class AgendaViewModel:ObservableObject{
    @Published var agendaItems:[AgendaItem] = [
        AgendaItem(startTime: "08:00", endTime: "09:00", image: "", title: "Breakfast", description: "Location:XYZ Cafe"),
        AgendaItem(startTime: "12:00", endTime: "13:00", image: "", title: "Lunch", description: "Location:ABC Restaurant"),
        AgendaItem(startTime: "15:00", endTime: "16:00", image: "", title: "High Tea", description: "Location: DEF Tea House"),
        AgendaItem(startTime: "19:00", endTime: "20:00", image: "", title: "Dinner", description: "Location:GHI Bistro")
    ]
}
