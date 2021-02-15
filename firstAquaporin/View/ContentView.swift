//
//  ContentView.swift
//  firstAquaporin
//
//  Created by Silke Sofie Holme Bonnen on 13/02/2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = PageModel()
    
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                ForEach(model.page) { r in
                    NavigationLink(
                        destination:
                            ReadMore(page: r),
                        label: {
                            Pic(page: r)
                        })
                    
                }
            }
            .navigationBarItems(leading: Image("AQ")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 40, alignment: .center)
                                    .clipped())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
