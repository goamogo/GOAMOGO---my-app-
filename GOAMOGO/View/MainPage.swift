//
//  MainPage.swift
//  GOAMOGO
//
//  Created by ella hong on 2023/06/28.
//

import SwiftUI

struct MainPage: View {
    //current tab
    @State var currentTab: Tab = .Bone
    
    @StateObject var sharedData: SharedDatamodel = SharedDatamodel()
    @StateObject var homeData : HomeViewModel = HomeViewModel()
    @Namespace var animation
    
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        //tab view
        VStack(spacing: 0){
            TabView(selection: $currentTab){
                
                Home(animation: animation)
                    .environmentObject(sharedData)
                    .tag(Tab.Bone)
                
                LocationView()
                    .environmentObject(LocationsViewModel())
                    .tag(Tab.Map)
                
//                ProfilePage()
//                    .tag(Tab.Profile)
//                
            }
            
            HStack(spacing: 0){
                ForEach(Tab.allCases, id: \.self){tab in
                    Button{
                        currentTab = tab
                        
                    } label: {
                        Image(tab.rawValue)
                            .renderingMode(.template)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .background(
                                Color("Khaki!")
                                    .opacity(0.1)
                                    .cornerRadius(5)
                                    .blur(radius: 5)
                                    .padding(-7)
                                    .opacity(currentTab == tab ? 1 : 0)
                                 
                            )
                            .frame(maxWidth: .infinity)
                            .foregroundColor(currentTab == tab ? Color("Khaki!") : Color.black.opacity(0.3))
                    }
                    
                }
            }
            .padding([.horizontal, .top])
            .padding(.bottom, 10)
            
        }
        .background(Color("Gray!").ignoresSafeArea())
        .overlay(
            ZStack{
                if let product = sharedData.detailProduct, sharedData.showDetailProduct{
                    
                    ProductDetailView(product: product, animation: animation)
                        .environmentObject(sharedData)
                }
            }
        
        )
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
 

// tab cases
enum Tab : String, CaseIterable {
    case Bone = "Bone!"
    case Map = "Map!"
//    case Profile = "Profile"
}
