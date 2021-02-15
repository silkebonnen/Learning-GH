//
//  PageModel.swift
//  firstAquaporin
//
//  Created by Silke Sofie Holme Bonnen on 13/02/2021.
//

import Foundation

class PageModel: ObservableObject {
    
    @Published var page = [Page]()
    
    init() {
        self.page = DataService.getLocalData()
    }
    
}
