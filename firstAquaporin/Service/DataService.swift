//
//  DataService.swift
//  firstAquaporin
//
//  Created by Silke Sofie Holme Bonnen on 13/02/2021.
//

import Foundation


class DataService {
    
    static func getLocalData() -> [Page] {
        
        let pathString = Bundle.main.path(forResource: "Aquaporin", ofType: "json")
        
        // check if pathstring is not nil, otherwise
        guard pathString != nil else {
            return [Page]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            do {
                var pageData = try decoder.decode([Page].self, from: data)
                
                for index in 0..<pageData.count {
                    pageData[index].id = UUID()
                }
                
                
                return pageData
            }
            catch {
                print(error)
            }

        }
        catch {
            print(error)
        }
        return [Page]()
    }
}
