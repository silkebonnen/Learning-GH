//
//  ReadMore.swift
//  firstAquaporin
//
//  Created by Silke Sofie Holme Bonnen on 13/02/2021.
//

import SwiftUI

struct ReadMore: View {
    
    var page:Page
    
    var body: some View {
        VStack{
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
                    .foregroundColor(Color.black)
                    .padding(.all, 10.0)
                Text(page.department)
                    .fontWeight(.regular)
                    .foregroundColor(Color.black)
                    .padding(.all, 10.0)
                Text(page.text)
                    .font(.body)
            }
        }
    }
}

struct ReadMore_Previews: PreviewProvider {
    static var previews: some View {
        ReadMore(page: Page.testData())
    }
}
