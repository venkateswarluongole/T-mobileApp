//
//  GalleryViewModel.swift
//  GalleryApp
//
//  Created by venkateswarlu.o on 24/05/24.
//

import SwiftUI
@MainActor
class GalleryViewModel:ObservableObject{
    
    @Published var navPath = [GalleryNavigation]()
    @Published var albumArray:[GalleryModel] = []
    @Published var selectedImage = ""
    init() {
        loadAlbumsAndImages()
    }
    
    func loadAlbumsAndImages(){
        let album1 = GalleryModel(name: "Album 1", photos: ["image1", "image2", "image3"])
        let album2 = GalleryModel(name: "Album 2", photos: ["image4", "image5", "image6"])
        let album3 = GalleryModel(name: "Album 3", photos: ["image7", "image8", "image9"])
//        let album4 = GalleryModel(name: "Album 4", photos: ["image10", "image11", "image12"])
        
        
        albumArray.append(album1)
        albumArray.append(album2)
        albumArray.append(album3)
//        albumArray.append(album4)
        
        print(albumArray)
    }
    
    func setSelectedImage(imageName:String){
        selectedImage = imageName
    }
 
}
