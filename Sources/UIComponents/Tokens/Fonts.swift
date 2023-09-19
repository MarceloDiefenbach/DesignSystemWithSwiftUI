//
//  FontSize.swift
//  BubbleWord
//
//  Created by Marcelo Diefenbach on 19/11/22.
//

import Foundation

import SwiftUI

public extension Font {
    /// Namespace to prevent naming collisions with static accessors on
    /// SwiftUI's Font.
    ///
    /// Xcode's autocomplete allows for easy discovery of design system fonts.
    /// At any call site that requires a font, type `Font.DesignSystem.<esc>`
    struct DesignSystem {
        public static let largeTitle = Font.system(size: 34, weight: .bold, design: .default)
        public static let mediumBold = Font.system(size: 24, weight: .light, design: .default)
        public static let normalBold = Font.system(size: 16, weight: .bold, design: .default)
        public static let normalRegular = Font.system(size: 16, weight: .regular, design: .default)
        public static let smallRegular = Font.system(size: 12, weight: .regular, design: .default)
        public static let smallBold = Font.system(size: 12, weight: .bold, design: .default)
    }
}
