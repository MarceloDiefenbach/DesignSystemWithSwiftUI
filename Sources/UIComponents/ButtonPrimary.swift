//
//  SwiftUIView.swift
//  
//
//  Created by Marcelo Diefenbach on 23/11/22.
//

import SwiftUI

public struct ButtonPrimary: View {
    
    @State var label: String
    @State var active: Bool
    @State var focused: Bool
    var action: () -> Void
    
    init(label: String, active: Bool = true, focused: Bool = false, action: @escaping () -> Void) {
        self.label = label
        self.active = active
        self.focused = focused
        self.action = action
    }
    
    public var body: some View {
        ZStack {
            HStack {
                Spacer()
                Text(label)
                    .font(.system(size: FontSize.small.value, weight: .regular))
                    .padding(.vertical, Spacing.xxxs.value)
                    .foregroundColor(active ? .white : .white.opacity(0.6))
                    .multilineTextAlignment(.center)
                Spacer()
            }
            .background(active ? Color.red : Color.gray)
            .cornerRadius(CornerRadius.circular.value)
            .overlay(
                RoundedRectangle(cornerRadius: CornerRadius.circular.value)
                        .stroke(focused ? .blue : .clear, lineWidth: focused ? 2 : 0)
                )
            .onTapGesture {
                action()
            }
        }
    }
}

struct FirstComponent_Previews: PreviewProvider {
    static var previews: some View {
        ButtonPrimary(label: "Label text", action: {})
    }
}
