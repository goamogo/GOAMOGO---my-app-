//
//  Product.swift
//  GOAMOGO
//
//  Created by ella hong on 2023/06/28.
//

import SwiftUI

struct Product: Identifiable, Hashable{
    var id = UUID().uuidString
    var type: ProductType
    var title: String
    var korean: String
    var productImage: String = ""
    var description: String
    var health: String
    var insect: String
    var insectImage: String = ""
}

 //product types
enum ProductType: String, CaseIterable{
    case Kibble = "Kibble"
    case Treats = "Treats"
}

