//
//  File.swift
//  
//
//  Created by Marcelo Diefenbach on 20/09/23.
//

import Foundation
import SwiftUI

public struct AppTextField: View {
    
    @Binding var text: String
    var placeholder: String
    var onCommit: () -> Void
    
    // MARK: - Styles
    let cornerXS: CGFloat = CornerRadius.xs.value
    let cornerCircular: CGFloat = CornerRadius.circular.value
    let fontStyle: Font = AppFonts.normalRegular.font
    let borderColor: Color = AppColors.neutralDarkPure.color
    let spacingXXXS: CGFloat = Spacing.xxxs.value
    
    // MARK: - init
    public init(text: Binding<String>, placeholder: String, onCommit: @escaping () -> Void) {
        self._text = text
        self.placeholder = placeholder
        self.onCommit = onCommit
    }
    
    public var body: some View {
        ZStack {
            TextField(placeholder, text: $text, onCommit: onCommit)
                .font(fontStyle)
                .padding(.vertical, spacingXXXS)
                .padding(.horizontal, spacingXXXS)
                .foregroundColor(AppColors.neutralDarkPure.color)
                .background(AppColors.neutralLightPure.color)
                .cornerRadius(cornerXS)
                .overlay(
                    RoundedRectangle(cornerRadius: cornerXS)
                        .stroke(borderColor, lineWidth: 1)
                )
        }
    }
}

struct AppTextField_Previews: PreviewProvider {
    @State static var text = ""
    
    static var previews: some View {
        AppTextField(text: $text, placeholder: "Placeholder", onCommit: {})
    }
}
