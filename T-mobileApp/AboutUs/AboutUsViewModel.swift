//
//  AboutUsViewModel.swift
//  T-mobileApp
//
//  Created by venkateswarlu.o on 20/05/24.
//

import SwiftUI
class CardViewModel:ObservableObject{
    @Published var cards:[CardItem] = []
    
    init(){
        cards = [
            CardItem(image: "img1", title: "justin shaifer khan", designation: "Photographer", description: "My name is Justin “Mr. Fascinate” Shaifer, and I am the founder of Fascinate Media. Through Fascinate, I produce and host educational science and tech TV shows for young diverse audiences. I’ve created and hosted series concepts for networks such as PBS Digital Studios, Discovery and commercial tech companies such as Intuit and NVIDIAhjjjkkklllfghjk."),
            CardItem(image: "img2", title: "Stefan Stefencik", designation: "Photographer", description: "My name's Stefan Stefancik and I'm 18yo student from Slovakia. I'm also self-taught amateur photographer and a digital designer"),
            CardItem(image: "img3", title: "Andrea Piacquadio", designation: "Designer", description: "Andrea Piacquadio is an Italian photographer with more than 750000 images licenses sold every year (more than one picture per minute). He is one of the top selling microstock photographers, one of the most influential and most imitated in the world."),
            CardItem(image: "img1", title: "justin shaifer khan", designation: "Photographer", description: "My name is Justin “Mr. Fascinate” Shaifer, and I am the founder of Fascinate Media. Through Fascinate, I produce and host educational science and tech TV shows for young diverse audiences. I’ve created and hosted series concepts for networks such as PBS Digital Studios, Discovery and commercial tech companies such as Intuit and NVIDIA."),
            CardItem(image: "img2", title: "Stefan Stefencik", designation: "Photographer", description: "My name's Stefan Stefancik and I'm 18yo student from Slovakia. I'm also self-taught amateur photographer and a digital designer"),
            CardItem(image: "img3", title: "Andrea Piacquadio", designation: "Designer", description: "Andrea Piacquadio is an Italian photographer with more than 750000 images licenses sold every year (more than one picture per minute). He is one of the top selling microstock photographers, one of the most influential and most imitated in the world."),
            CardItem(image: "img1", title: "justin shaifer khan", designation: "Photographer", description: "My name is Justin “Mr. Fascinate” Shaifer, and I am the founder of Fascinate Media. Through Fascinate, I produce and host educational science and tech TV shows for young diverse audiences. I’ve created and hosted series concepts for networks such as PBS Digital Studios, Discovery and commercial tech companies such as Intuit and NVIDIA."),
            CardItem(image: "img2", title: "Stefan Stefencik", designation: "Photographer", description: "My name's Stefan Stefancik and I'm 18yo student from Slovakia. I'm also self-taught amateur photographer and a digital designer"),
            CardItem(image: "img3", title: "Andrea Piacquadio", designation: "Designer", description: "Andrea Piacquadio is an Italian photographer with more than 750000 images licenses sold every year (more than one picture per minute). He is one of the top selling microstock photographers, one of the most influential and most imitated in the world."),
            CardItem(image: "img1", title: "justin shaifer khan", designation: "Photographer", description: "My name is Justin “Mr. Fascinate” Shaifer, and I am the founder of Fascinate Media. Through Fascinate, I produce and host educational science and tech TV shows for young diverse audiences. I’ve created and hosted series concepts for networks such as PBS Digital Studios, Discovery and commercial tech companies such as Intuit and NVIDIA."),
            CardItem(image: "img2", title: "Stefan Stefencik", designation: "Photographer", description: "My name's Stefan Stefancik and I'm 18yo student from Slovakia. I'm also self-taught amateur photographer and a digital designer"),
            CardItem(image: "img3", title: "Andrea Piacquadio", designation: "Designer", description: "Andrea Piacquadio is an Italian photographer with more than 750000 images licenses sold every year (more than one picture per minute). He is one of the top selling microstock photographers, one of the most influential and most imitated in the world.")
        ]
    }
}
