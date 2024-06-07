//
//  ImageFullScreenView.swift
//  GalleryApp
//
//  Created by venkateswarlu.o on 24/05/24.
//

import SwiftUI
struct ImageFullScreenView: View {
    
    @ObservedObject var viewModel:GalleryViewModel
    @Environment(\.dismiss) var dismiss
    let galleryModel:GalleryModel
    var body: some View {
        VStack{
            Image(viewModel.selectedImage)
                .resizable()
                .scaledToFit()
                .frame(height: UIScreen.main.bounds.height / 1.1)
 
            ScrollView(.horizontal){
                HStack(spacing:2){
                    ForEach (galleryModel.photos,id: \.self){ photos in
                        
                            Image(photos)
                                .resizable()
                                .scaledToFit()
                                .clipped()
                                .frame(width: 100,height: 100)
                                .frame(maxHeight: .infinity,alignment:.bottom)
                                .onTapGesture {
                                    viewModel.selectedImage = photos
                                }
                                .overlay {
                                    if viewModel.selectedImage == photos{
                                        Rectangle()
                                            .stroke(.red,lineWidth: 2.0)
                                            .frame(width: 100,height: 100)
                                    }
                                }
                        ;
                                        
                        }
                }
                .padding(.bottom,20)
                
            }
            
        }
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                HStack{
                    Image(systemName: "chevron.left")
                    Text("Back")
                }
                .onTapGesture {
                    dismiss()
                }
                .foregroundStyle(.blue)
            }
        }
    }
}
 
#Preview {
    ImageFullScreenView(viewModel: GalleryViewModel(), galleryModel: GalleryModel(id: UUID(), name: "Album1", photos: ["image1","image2","image3","image1","image2","image3","image1","image2","image3","image1","image2","image3","image1","image2","image3","image1","image2","image3","image1","image2","image3","image1","image2","image3"]))
}
