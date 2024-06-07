//
//  PhotoGridView.swift
//  GalleryApp
//
//  Created by venkateswarlu.o on 24/05/24
 
import SwiftUI
struct PhotosGridView: View {
    
    let galleryModel:GalleryModel
    
    @ObservedObject var viewModel:GalleryViewModel
    
    var columnGrid:[GridItem] = [GridItem(.flexible(),spacing: 1),GridItem(.flexible(),spacing: 1),GridItem(.flexible(),spacing: 1)]
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns:columnGrid,spacing:2){
                ForEach(galleryModel.photos,id:\.self){ photos in
                    Button{
                        viewModel.selectedImage = photos
                        viewModel.navPath.append(.fullScreenView(galleryModel))
                    }label: {
                        Image(photos)
                            .resizable()
                            .scaledToFill()
                            .frame(width:(UIScreen.main.bounds.width / 3) - 1,height: (UIScreen.main.bounds.width / 3) - 1)
                            .clipped()
                    }
                    
                }
            }
        }
    }
}
 
#Preview {
    NavigationStack{
        PhotosGridView(galleryModel: GalleryModel(id: UUID(), name: "Album1", photos: ["image1","image2","image3","image4","image5","image6","image7","image8","image9"]), viewModel: GalleryViewModel())
    }
}
