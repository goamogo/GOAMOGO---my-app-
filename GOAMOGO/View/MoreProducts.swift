//
//  MoreProducts.swift
//  GOAMOGO
//
//  Created by ella hong on 2023/06/28.
//

import SwiftUI

struct MoreProducts: View {
    var animation: Namespace.ID
    @StateObject var homeData : HomeViewModel = HomeViewModel()
    @EnvironmentObject var sharedData: SharedDatamodel
    var body: some View {
        VStack {
            Text("More dog food")
                .font(.custom(customFont, size: 24))
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, alignment: .leading )
            
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing:100){
                    StaggeredGrid(columns: 2,spacing: 100, list: homeData.allProducts){ product in
                        
                        ProductCardView(product: product)
                    }
                }
                .padding(.horizontal , 25)
                .padding(.bottom)
                .padding(.top, 80)
            }
            
            
        }
        .padding()
        .background(Color("Gray!"))
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
}
        
    
    
struct MoreProducts_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}


