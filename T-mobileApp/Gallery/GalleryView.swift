//
//  ContentView.swift
//  GalleryApp
//
//  Created by venkateswarlu.o on 24/05/24.
 
import SwiftUI
struct GalleryScreen: View {
    @StateObject var viewModel = GalleryViewModel()
    
    var body: some View {
        NavigationStack(path:$viewModel.navPath){
            HStack(spacing:30){
                ForEach(viewModel.albumArray){ album in
                    Button{
                        viewModel.navPath.append(.galleryGridView(album))
                    }label: {
                        albumView(albumName: album.name, count: album.photos.count)
                    }
                }
            }
            .navigationDestination(for: GalleryNavigation.self){ route in
               destination(for: route)
            }
            .navigationTitle("Gallery")
            .navigationBarTitleDisplayMode(.inline)
            .padding(40)
            .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .topLeading )
            
        }
    }
    
    
    private func albumView(albumName:String,count:Int)->some View{
        VStack{
            Rectangle()
                .frame(width: 120,height: 120)
                .foregroundStyle(.gray.opacity(0.15))
                .overlay {
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30,height: 30)
                        .foregroundStyle(.gray.opacity(0.2))
                }
            
            Text(albumName)
                .bold()
                .font(.title3)
                .foregroundStyle(.black)
            
            Text("\(count) items")
                .foregroundStyle(.blue)
            
        }
    }
}
 
extension GalleryScreen{
    @ViewBuilder
    private func destination(for route:GalleryNavigation)->some View{
        switch route {
        case .galleryGridView(let galleryModel):
            PhotosGridView(galleryModel: galleryModel, viewModel: viewModel)
            
        case .fullScreenView(let galleryModel):
            ImageFullScreenView(viewModel: viewModel, galleryModel: galleryModel)
        }
    }
}
 
#Preview {
    NavigationStack{
        GalleryScreen()
    }
}
