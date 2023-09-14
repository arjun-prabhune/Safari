//
//  InsetFactView.swift
//  Safari
//
//  Created by Arjun Prabhune on 9/10/23.
//

import SwiftUI

struct InsetFactView: View {
    // MARK: Properties
    
    let animal: Animal
    
    // MARK: Body
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            } //: TAB
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        } //: BOX
    }
}

struct InsetFactView_Previews: PreviewProvider {
    static let animals: [Animal] =
    Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetFactView(animal: animals[0])
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding( )
    }
}
