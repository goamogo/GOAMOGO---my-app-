//
//  ProductDetailView.swift
//  GOAMOGO
//
//  Created by ella hong on 2023/07/02.
//

import SwiftUI

struct ProductDetailView: View {
    var product: Product
    
    var animation: Namespace.ID
    
    @EnvironmentObject var sharedData: SharedDatamodel
    var body: some View {
        VStack{
            VStack{
                HStack{
                    Button{
                        withAnimation(.easeInOut){
                            sharedData.showDetailProduct = false
                        }
                    } label: {
                        Image(systemName: "arrow.left")
                            .font(.title2)
                            .foregroundColor(Color.black.opacity(0.7))
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                            .padding(.top, 50.0)
                            
                    }
    
                
                }
                .padding()
                
                Image(product.productImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .matchedGeometryEffect(id: "\(product.id)IMAGE", in: animation)
                    .padding(.horizontal)
                    .padding(.bottom, 50.0)
                    .offset(y: -12)
                    .frame(width: 350, height: 350)
            }
            .frame(height: getRect().height / 2.7)
            
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .leading, spacing: 15){
                    Text(product.title)
                        .font(.custom(customFont, size: 25).bold())
                    
                    Text(product.description)
                        .font(.custom(customFont, size: 18))
                        .foregroundColor(Color("Green!"))
                    
                    Text("Good for your dog's... \n\(product.health)")
                        .foregroundColor(Color.black).bold()
                    
                    Text("Insect used: \(product.insect)")
                    
                    Image(product.insectImage)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:100, height: 100)
                    
                    Spacer()
                    
                    if product.title == "GUTSY"{
                        Link("Learn more about \(product.title)", destination: URL(string: "https://gutsy.dog/products/chicken-munchies-adult-l")!)
                            .tint(.blue)
                    }
                    else if product.title == "THETEN" {
                        Link("Learn more about \(product.title)", destination: URL(string: "https://runiepet.com/product/detail.html?product_no=3737&srvc_anl=gcs_ssc_c000001704&gclid=CjwKCAjw69moBhBgEiwAUFCx2GzVTdaJyXbTZW1DEkSz8xINKFW5kIWEQf3CCIhvshzZd9e_Qsl_RRoCjAMQAvD_BwE")!)
                            .tint(.blue)
                    }
                    else if product.title == "BUGSPET"{
                        Link("Learn more about \(product.title)", destination: URL(string: "https://www.bugs-pet.com/allproduct/?idx=161#prod_detail_detail")!)
                            .tint(.blue)
                    }
                    else if product.title == "ENTOVET"{
                        Link("Learn more about \(product.title)", destination: URL(string: "https://www.biteme.co.kr/shop/product/product_view?product_cd=1000023461")!)
                            .tint(.blue)
                    }
                    else if product.title == "FUCOHOLIC"{
                        Link("Learn more about \(product.title)", destination: URL(string: "https://dogpre.com/product/83971")!)
                            .tint(.blue)
                    }
                    else if product.title == "INSECTDOG"{
                        Link("Learn more about \(product.title)", destination: URL(string: "https://dogpre.com/product/86255")!)
                            .tint(.blue)
                    }
                    else if product.title == "LAPOG"{
                        Link("Learn more about \(product.title)", destination: URL(string: "https://shorturl.at/cHX34")!)
                            .tint(.blue)
                    }
                    else if product.title == "PRIMORI"{
                        Link("Learn more about \(product.title)", destination: URL(string: "https://highfarm.co.kr")!)
                            .tint(.blue)
                    }
                    else if product.title == "TOMOJO"{
                        Link("Learn more about \(product.title)", destination: URL(string: "https://www.petshome.co.kr/567/?idx=1961")!)
                            .tint(.blue)
                    }
                    else if product.title == "WELLSOME"{
                        Link("Learn more about \(product.title)", destination: URL(string: "https://wellsome.co.kr/product/list.html?cate_no=48")!)
                            .tint(.blue)
                    }
                    else if product.title == "YORA"{
                        Link("Learn more about \(product.title)", destination: URL(string: "http://www.yora.co.kr")!)
                            .tint(.blue)
                    }
                    else if product.title == "FABREMALL"{
                        Link("Learn more about \(product.title)", destination: URL(string: "https://fabremall.com/index.html")!)
                            .tint(.blue)
                    }
                    else if product.title == "INSECTUP"{
                        Link("Learn more about \(product.title)", destination: URL(string: "https://shorturl.at/bdfDY")!)
                            .tint(.blue)
                    }
                    
                    
                    
                    
                }
                .padding([.horizontal, .bottom], 20)
                .padding(.top, 25)
                .frame(maxWidth: .infinity, alignment: .leading)
                
            }
            .frame(maxWidth: .infinity, maxHeight:. infinity)
            .background(
                Color("Gray!")
                    .ignoresSafeArea()
            
            )
        }
        .background(Color.orange.opacity(0.9).ignoresSafeArea())
    }
    
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
