
//  OnboardingPage.swift
//  GOAMOGO
//
//  Created by ella hong on 2023/06/26.



import SwiftUI

let customFont = "SFProDisplay-Bold"

struct OnboardingPage: View {
    @State var shouldShowHome: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("signature")
                    .resizable()
                    .frame(width: 1000, height: 900)
                    .padding(.trailing, 48.0)
                
                NavigationLink(
                    destination: MainPage().navigationBarBackButtonHidden(true),
                    isActive: $shouldShowHome,
                    label: {
                        Text("Get started")
                            .font(.custom(customFont, size: 17))
                            .padding(.vertical, 16)
                            .frame(maxWidth: .infinity)
                            .background(Color("Brown!"))
                            .cornerRadius(30)
                            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 5, y: 5)
                            .foregroundColor(Color.white)
                    })
                    .padding(.top, 500.0)
                    .padding(.horizontal, 350.0)
                    .offset(y: getRect().height < 750 ? 20 : 40)
                
                Spacer()
            }
            .padding()
            .padding(.top, getRect().height < 750 ? 0 : 20)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                Color("Gray!")
            )
        }
    }
    
    struct OnboardingPage_Previews: PreviewProvider {
        static var previews: some View {
            OnboardingPage()
        }
    }
}

extension View {
    func getRect() -> CGRect {
        return UIScreen.main.bounds
    }
}

