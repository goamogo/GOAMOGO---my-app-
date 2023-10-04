//
//  SharedDatamodel.swift
//  GOAMOGO
//
//  Created by ella hong on 2023/07/02.
//

import SwiftUI

class SharedDatamodel: ObservableObject {
    @Published var detailProduct: Product?
    @Published var showDetailProduct: Bool = false
}
 
