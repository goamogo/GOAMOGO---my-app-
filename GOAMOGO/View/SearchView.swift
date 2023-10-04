//
//  SearchView.swift
//  GOAMOGO
//
//  Created by ella hong on 2023/06/29.
//

import SwiftUI

struct SearchView: View {
   var animation: Namespace.ID
    @EnvironmentObject var homeData: HomeViewModel
    
    @FocusState var startTF : Bool
    var body: some View {
        VStack(spacing:0){
            HStack(spacing: 20){
                Button{
                    withAnimation{
                        homeData.searchActivated = false
                    }
                    homeData.searchText = ""
                    
                } label: {
                    Image(systemName: "arrow.left")
                        .font(.title2)
                        .foregroundColor(Color.black.opacity(0.8))
                }
                
                HStack(spacing: 15){
                    Image(systemName: "magnifyingglass")
                        .font(.title2)
                        .foregroundColor(.gray)
                    
                    TextField("Search", text: $homeData.searchText)
                        .focused($startTF)
                        .textCase(.lowercase)
                        .disableAutocorrection(true)
                }
                .padding(.vertical, 12)
                .padding(.horizontal)
                .background(
                        Capsule()
                            .strokeBorder(Color("Green!"), lineWidth: 1.5)
                )
                .matchedGeometryEffect(id: "SEARCHBAR", in: animation)
                .padding(.trailing, 20)
            }
            .padding([.horizontal])
            .padding(.top)
            .padding(.bottom, 10)
            
            if let products = homeData.searchedProducts{
                if products.isEmpty{
                    VStack(spacing: 10){
                        Image("NotFound")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width:200, height: 200)
                            .padding(.top, 30)
                        
                        HStack{
                            Text("Item not found")
                                .font(.custom(customFont,size: 22))
                            
                            Image(systemName: "pawprint")
                        }
                        
                        Text("Try searching other healthy products!")
                            .foregroundColor(.gray)
                        
                    }
                    .padding()
                }
                else{
                    ScrollView(.vertical, showsIndicators: false){
                        VStack(spacing: 0){
                            
                            Text("Found \(products.count) results")
                                .font(.custom(customFont, size: 24))
                                .padding(.vertical)
                            StaggeredGrid(columns: 2,spacing: 20, list: products){ product in
                                
                                ProductCardView(product: product)
                            }
                        }
                        .padding()
                    }
                }
            }else{
                ProgressView()
                    .padding(.top, 30)
                    .opacity(homeData.searchText == "" ? 0 : 1)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(
        
            Color("Gray!")
                .ignoresSafeArea()
        )
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                startTF = true
            }
        }
    }
    
    @ViewBuilder
    func ProductCardView(product: Product)-> some View {
        VStack(spacing: 10){
            Image(product.productImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .offset(y: -50)
                .padding(.bottom, -50)
            
            Text(product.title)
                .font(.custom(customFont, size: 18))
                .fontWeight(.semibold)
                .padding(.top)
                .foregroundColor(.white)
            
            Text(product.korean)
                .font(.custom(customFont, size: 18))
                .foregroundColor(Color("Gray!"))
        }
        .padding(.horizontal, 15)
        .padding(.bottom, 20)
        .background(
            Color(.orange).opacity(0.7)
                .cornerRadius(25)
        
        )
        .padding(.top, 50)

        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
