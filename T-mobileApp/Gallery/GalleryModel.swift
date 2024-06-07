//
//  GalleryModel.swift
//  GalleryApp
//
//  Created by venkateswarlu.o on 24/05/24.
//

import SwiftUI
enum GalleryNavigation:Hashable{
    case galleryGridView(GalleryModel)
    case fullScreenView(GalleryModel)
}
 
struct GalleryModel:Identifiable,Hashable{
    var id = UUID()
    let name: String
    var photos: [String]
}
