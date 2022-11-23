//
//  SwiftUIView.swift
//  
//
//  Created by Marcelo Diefenbach on 23/11/22.
//

import SwiftUI

public struct FirstComponent: View {
    
    @State var text: String
    
    public init(text: String) {
        self.text = text
    }
    
    public var body: some View {
        Text(text)
    }
}

struct FirstComponent_Previews: PreviewProvider {
    static var previews: some View {
        FirstComponent(text: "Marcelo")
    }
}
