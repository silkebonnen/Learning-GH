//
//  Page.swift
//  firstAquaporin
//
//  Created by Silke Sofie Holme Bonnen on 13/02/2021.
//

import Foundation


struct Page: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var image:String
    var department:String
    var text:String

    static func testData() -> Page {
        
        let testPage = Page(id: UUID(), name: "Test Name", image: "Aquaporin2", department: "MARKET", text:"text")
        
        return testPage
    }
}
