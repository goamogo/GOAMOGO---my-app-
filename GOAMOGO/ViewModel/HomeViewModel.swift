//
//  HomeViewModel.swift
//  GOAMOGO
//
//  Created by ella hong on 2023/06/28.
//

import SwiftUI

import Combine

class HomeViewModel: ObservableObject {
    @Published var productType: ProductType = .Kibble
    
    @Published var products: [Product] = [
        
        Product(type: .Kibble, title: "GUTSY", korean: "굿씨", productImage: "GUTSY", description: "Gutsy's kibble is hypoallergenic and perfect for dogs with a sensitive stomach. The brand uses high quality, easy digestible insect proteins in their dog food. \nThe ecological footprint of insects is 30 times smaller per kg than that of beef. Serving Gutsy to your dog can reduce your carbon footprint!", health: "stomach, allergy", insect: "mealworm 밀웜", insectImage: "MEALWORM"),
        Product(type: .Kibble, title: "BUGSPET", korean: "벅스펫", productImage: "BUGSPET", description: "BUGSPET's formula is designed to provide dogs with sustainable source of protein. Their brand's products are also low in fat, making it an ideal choice for dogs that require a diet with reduced fat content. Their kibble is free from common allergens such as grains and soys", health: "meat and poultry allergy, weight management", insect: "mealworm 밀웜", insectImage: "MEALWORM"),
        Product(type: .Kibble, title: "ENTOVET", korean: "엔토벳", productImage: "ENTOVET", description: "ENTOVET's kibble is hypoallergenic and is made using insect protein. 0 antibiotics were used as the brand's dog food is made from insects raised in certified farms in the Netherlands. \nENTOVET is a brand that veterinarians in France trust for its flawless nutritional balance and its effectiveness in allergy prevention and treatment", health: "urinary tract infections, digestion, allergy", insect: "Tabanidae 동애등애", insectImage: "TABANIDAE"),
        Product(type: .Kibble, title: "FUCOHOLIC", korean: "후코홀릭", productImage: "FUCOHOLIC", description: "FUCOHOLIC's kibbles are hypoallergenic food that minimizes allergies through the use of Tabanidae insect protein which is a rich source of essential amino acids. It doesn't contain any grains which can trigger allergic reactions in dogs with gluten allergies. It contains fucoidan which enhances immunity", health: "digestion, fur growth, skin redness", insect: "Tabanidae 동애등애", insectImage: "TABANIDAE"),
        Product(type: .Kibble, title: "INSECTDOG", korean: "인섹트도그 하이포알러지", productImage: "INSECT", description: "InsectDog Hypoallergen's kibble is an all-in-one diet dog food full of valuable fatty acids to help your dog achieve healthy skin and a shiny coat. InsectDog combines easily digestible rice and a unique combination of vital substances and insect protein to best provide a solution for adult canines that suffer from a food intolerance.", health: "skin, fur, gut flora, immune system", insect: "mealworm 밀웜", insectImage: "MEALWORM"),
        Product(type: .Kibble, title: "LAPOG", korean: "라포그", productImage: "LAPOG", description: "LAPOG Real Insect Dog Food is free from artificial additives, fillers, and grains, making it suitable for dogs with specific dietary needs or sensitivities. The brand's kibble is packed with insect proteins which are rich in healthy fats, promoting a balanced diet for your dog", health: "tear stains, immunity, digestion, allergies", insect: "Tabanidae 동애등애", insectImage: "TABANIDAE"),
        Product(type: .Kibble, title: "PRIMORI", korean: "프리모리", productImage: "PRIMORI", description: "PRIMORI's kibbles avoid the use of gluten, an ingredient that can cause allergic reactions and tear stains in dogs. Instead, the brand uses silkworm which contains various functional ingredients including protein, various amino acids, omega-3 fatty acids, various vitamins, flavonoids, and polyphenols", health: "cognitive impairment, diabetes", insect: "Silkworms 익은누에 (홍잠)", insectImage: "SILKWORM"),
        Product(type: .Kibble, title: "THETEN", korean: "더텐소프트", productImage: "THE TEN", description: "THETEN's insect kibble uses mealworm protein which is evaluated as the most superior protein source nutritionally among existing protein sources as it contains more than twice the amount of protein found in meat and is rich in dietary fiber, essential amino acids, and also non-essential amino acids that aren't present in meat protein.", health: "allergic reactions, tear stains", insect: "mealworm 밀웜", insectImage: "MEALWORM"),
        Product(type: .Kibble, title: "TOMOJO", korean: "토모조", productImage: "TOMOJO", description: "TOMOJO's kibble recipe for puppies is rich in protein to cover the essential needs of your growing dog. Made from a single source of animal protein (24%) and with highly digestible and tasty ingredients (insects, sorghum, chicory root), the brand's puppy recipe is suitable for sensitive digestive systems", health: "digestion, eczema, arthritis (swelling of joints)", insect: "Tabanidae 동애등애 + mealworm 밀웜", insectImage: "MEALTAB"),
        Product(type: .Kibble, title: "WELLSOME", korean: "웰썸", productImage: "WELLSOME", description: "WELLSOME, a compound word combining 'WELL' and 'WHOLESOME', is an eco-friendly pet food brand that prioritizes the health and taste of beloved pets. It contains only natural ingredients (insect protein), allowing pet owners to feel at ease and provide their pets with food they can safely consume.", health: "arthritis (swelling of joints)", insect: "Tabanidae 동애등애", insectImage: "TABANIDAE"),
        Product(type: .Kibble, title: "YORA", korean: "요라", productImage: "YORA", description: "YORA's kibble is a natural, balanced, and highly palatable food for all pets. Their brand's dog food is made with tabanidae insect, the most easily digestible and sustainable single-source protein in the world. Tabanidae insect is an environmentally friendly and top-quality fertilizer producer. They consume and utilize agricultural crops that have no commercial value, reducing food waste.", health: "brain growth, allergies", insect: "Tabanidae 동애등애", insectImage: "TABANIDAE"),
        Product(type: .Treats, title: "FABREMALL", korean: "파브르몰", productImage: "FABREMALL", description: "This FABREMALL's food bar (한끼바) is a 110Kcal is a snack bar that contains two-spotted cricket insect protein. Two-spotted cricket protein is an alternative protein source for pets with allergies or sensitivities to common proteins like chicken, beef, or soy. The brand's treat is perfect for feeding nutritional value to dogs who only try to eat treats instead of their kibble food.", health: "food allergies, food intolerances", insect: "Gryllus bimaculatus/two-spotted cricket 쌍별귀뚜라미", insectImage: "CRICKET"),
        Product(type: .Treats, title: "INSECTUP", korean: "인섹트업 하이포알러지", productImage: "INSECTUP", description: "INSECTUP's treats are 1Kcal hypoallergenic and are made with tabanidae insect protein which has a significantly lower allergenic potential compared to meat. The brand's treat comes in three different types made for different health purposes: calming (good for separation anxiety), cognitive ability, diet", health: "separation anxiety, cognitive ability, weight loss", insect: "Tabanidae 동애등애", insectImage: "TABANIDAE")
    ]
    
    
    @Published var filteredProducts: [Product] = []
    
    @Published var showMoreProducts: Bool = false
    
    @Published var allProducts: [Product] = []
    
    
    //search bar view
    @Published var searchText: String = ""
    @Published var searchActivated: Bool = false
    @Published var searchedProducts: [Product]?
    
    var searchCancellable: AnyCancellable?
    
    init(){
        filterProductByType()
        allProductsByType()
        
        searchCancellable = $searchText.removeDuplicates()
            .debounce(for: 0.5, scheduler: RunLoop.main)
            .sink(receiveValue: {str in
                if str != ""{
                    self.filterProductBySearch()
                }
                else{
                    self.searchedProducts = nil
                }
                
            })
    }
    
    func allProductsByType(){
        DispatchQueue.global(qos: .userInteractive).async {
            let results = self.products
                .lazy
                .filter{ product in
                    return product.type == self.productType
                }
            
            
            DispatchQueue.main.async{
                self.allProducts = results.compactMap({product in
                    return product
                })
            }
        }
    }
    
    func filterProductByType(){
        
        DispatchQueue.global(qos: .userInteractive).async {
            let results = self.products
                .lazy
                .filter{ product in
                    return product.type == self.productType
                }
                .prefix(5)
            
            
            DispatchQueue.main.async{
                self.filteredProducts = results.compactMap({product in
                    return product
                })
            }
        }
    }
    
    func filterProductBySearch(){
        
        DispatchQueue.global(qos: .userInteractive).async {
            let results = self.products
                .lazy
                .filter{ product in
                    return product.title.lowercased().contains(self.searchText.lowercased())
                }
            
            
            DispatchQueue.main.async{
                self.searchedProducts = results.compactMap({product in
                    return product
                })
            }
        }
    }
}

 
