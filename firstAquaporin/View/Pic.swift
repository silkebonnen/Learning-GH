//
//  Image.swift
//  firstAquaporin
//
//  Created by Silke Sofie Holme Bonnen on 15/02/2021.
//

import SwiftUI

struct Pic: View {
    
    var page:Page
    
    var body: some View {
        ZStack {
            Image(page.image)
                .resizable()
                .scaledToFill()
                .frame(width: 400, height: 400, alignment: .center)
                .clipped()
                .cornerRadius(10.0)
            VStack {
                Text(page.name)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .padding(.all, 10.0)
                    .background(Color.gray
                                    .opacity(0.7)
                                    .cornerRadius(10)
                                    )
                Text(page.department)
                    .fontWeight(.regular)
                    .foregroundColor(Color.black)
                    .padding(.all, 10.0)
                    .background(Color.gray
                                    .opacity(0.7)
                                    .cornerRadius(10)
                                    )
            }
            
            
        }
    }
}

struct Pic_Previews: PreviewProvider {
    static var previews: some View {
        Pic(page: Page.testData())
    }
}
