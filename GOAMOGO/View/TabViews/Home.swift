//
//  Home.swift
//  GOAMOGO
//
//  Created by ella hong on 2023/06/28.
//

import SwiftUI

struct Home: View {
    var animation: Namespace.ID
    
    @EnvironmentObject var sharedData: SharedDatamodel
    
    @StateObject var homeData : HomeViewModel = HomeViewModel()
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 15){
                //search bar
                ZStack{
                    if homeData.searchActivated{
                        SearchBar()
                    }
                    else{
                        SearchBar()
                            .matchedGeometryEffect(id:"SEARCHBAR"  , in: animation)
                    }
                }
                .frame(width: getRect().width / 1.6)
                .padding(.horizontal, 25)
                .contentShape(Rectangle())
                .onTapGesture{
                    withAnimation(.easeInOut){
                        homeData.searchActivated = true
                    }
                }
                
                Text("dog food")
                    .font(.custom (customFont, size: 30))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top)
                    .padding(.horizontal, 25)
                    .foregroundColor(Color("Green!"))
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 18){
                        
                        ForEach(ProductType.allCases, id: \.self){type in
                            //product type view
                            ProductTypeView(type: type)
                        }
                    }
                    .padding(.horizontal, 50)
                }
                .padding(.top, 25)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing:25){
                        ForEach(homeData.filteredProducts){product in
                            ProductCardView(product: product)
                        }
                    }
                    .padding(.horizontal , 25)
                    .padding(.bottom)
                    .padding(.top, 80)
                }
                .padding(.top, 30)
                
                Button{
                    homeData.showMoreProducts.toggle()
                }label: {
                    
                    Label{
                        Image(systemName: "arrow.right")
                    }icon:{
                        Text("see more")
                    }
                    .font(.custom(customFont, size: 15))
                    .foregroundColor(Color("Brown!"))
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing)
                .padding(.top, 10)
            }
            .padding(.vertical)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Gray!"))
        .onChange(of: homeData.productType){ newValue in
            homeData.filterProductByType()
        }
        .sheet(isPresented: $homeData.showMoreProducts){
            
        } content: {
            MoreProducts(animation: animation)
        }
        .overlay(
            ZStack{
                if homeData.searchActivated {
                    SearchView(animation: animation)
                        .environmentObject(homeData)
                }
            }
         )
    }
    
    @ViewBuilder
    func SearchBar()-> some View{
        HStack(spacing: 15){
            Image(systemName: "magnifyingglass")
                .font(.title2)
                .foregroundColor(.gray)
             
            TextField("Search", text: .constant(""))
                .disabled(true)
        }
        .padding(.vertical, 12)
        .padding(.horizontal)
        .background(
                Capsule()
                    .strokeBorder(Color("Green!"), lineWidth: 1.5)
        )
    }
    
    @ViewBuilder
    func ProductCardView(product: Product)-> some View {
        VStack(spacing: 10){
            ZStack{
                if sharedData.showDetailProduct{
                    Image(product.productImage)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                else{
                    Image(product.productImage)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .matchedGeometryEffect(id: "\(product.id)IMAGE", in: animation)
                }
            }
            .frame(width: getRect().width / 2.5, height: getRect().width / 2.5)
            .offset(y: -80)
            .padding(.bottom, -80)
            
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
        .onTapGesture{
            withAnimation(.easeInOut){
                sharedData.detailProduct = product
                sharedData.showDetailProduct = true
            }
        }

        
    }
    
    @ViewBuilder
    func ProductTypeView(type: ProductType)->some View{
        Button{
            withAnimation{
                homeData.productType = type
            }
            
        } label: {
            Text(type.rawValue)
                .font(.custom(customFont, size: 15))
                .fontWeight(.semibold)
                .foregroundColor(homeData.productType == type ? Color("Brown!") : Color.gray)
                .padding(.bottom, 10)
                .overlay(
                    ZStack{
                        if homeData.productType == type{
                            Capsule()
                                .fill(Color("Brown!"))
                                .frame(height: 2)
                                .matchedGeometryEffect(id: "PRODUCTTAB", in: animation)
                                .frame(height: 2)
                        }
                        else{
                            Capsule()
                                .fill(Color.clear)
                                .frame(height: 2)

                        }
                    }
                    .padding(.horizontal, -5)
                    
                    ,alignment: .bottom
                
                )
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}




//
//    .overlay(
//        RoundedRectangle(cornerRadius: 25).stroke(Color("Brown!"), lineWidth: 4)
//
//    )
