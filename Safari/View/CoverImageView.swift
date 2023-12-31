//
//  CoverImageView.swift
//  Safari
//
//  Created by Arjun Prabhune on 9/5/23.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: - Properties
    
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    
    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            } //: LOOP
        } // : TAB
        .tabViewStyle(PageTabViewStyle())
    }
}

// MARK: - Preview
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
