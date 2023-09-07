//
//  ContentView.swift
//  Safari
//
//  Created by Arjun Prabhune on 9/3/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // MARK: - Properties
        
        
        
        // MARK: - Body
        
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            } //: LIST
            .navigationBarTitle("Africa", displayMode: .large )
        } //: NAVIGATION
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
