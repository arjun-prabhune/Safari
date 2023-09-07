//
//  InsetGalleryView.swift
//  Safari
//
//  Created by Arjun Prabhune on 9/7/23.
//

import SwiftUI

struct InsetGalleryView: View {
    // Properties
    
    let animal: Animal
    
    // Body
    
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            HStack (alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                } //: LOOP
            } //: Scroll
        } //: HSTACK
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    
    static let animals: [Animal] =
    Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetGalleryView(animal: animals[0])
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
