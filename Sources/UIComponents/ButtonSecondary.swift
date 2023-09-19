//
//  SwiftUIView.swift
//  
//
//  Created by Marcelo Diefenbach on 26/11/22.
//

import SwiftUI

public struct ButtonSecondary: View {
    
    @State var label: String
    @State var active: Bool
    @State var focused: Bool
    @State var circular: Bool
    var action: () -> Void
    
    //MARK: - styles
    let cornerXS: CGFloat = CornerRadius.xs.value
    let cornerCircular: CGFloat = CornerRadius.circular.value
    let fontStyle: Font = Font.DesignSystem.normalRegular
    
    //MARK: - init
    public init(label: String, active: Bool = true, focused: Bool = false, circular: Bool = false, action: @escaping () -> Void) {
        self.label = label
        self.active = active
        self.focused = focused
        self.circular = circular
        self.action = action
    }
    
    public var body: some View {
        ZStack {
            HStack {
                Spacer()
                Text(label)
                    .font(fontStyle)
                    .padding(.vertical, Spacing.xxxs.value)
                    .foregroundColor(active ? .black : .white.opacity(0.6))
                    .multilineTextAlignment(.center)
                Spacer()
            }
            .background(active ? Color.clear : Color.gray)
            .cornerRadius(circular ? cornerCircular : cornerXS)
            .overlay(
                RoundedRectangle(cornerRadius: circular ? cornerCircular : cornerXS)
                        .stroke(focused ? .blue : .clear, lineWidth: focused ? 2 : 0)
                )
            .onTapGesture {
                action()
            }
        }
    }
}

struct ButtonSecondary_Previews: PreviewProvider {
    static var previews: some View {
        ButtonSecondary(label: "Label text", action: {})
    }
}
