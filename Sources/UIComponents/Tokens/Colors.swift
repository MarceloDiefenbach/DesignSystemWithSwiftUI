//
//  File.swift
//  
//
//  Created by Marcelo Diefenbach on 19/09/23.
//

import Foundation
import SwiftUI

public extension Color {
    /// Namespace to prevent naming collisions with static accessors on
    /// SwiftUI's Color.
    ///
    /// Xcode's autocomplete allows for easy discovery of design system colors.
    /// At any call site that requires a color, type `Color.DesignSystem.<esc>`
    struct DesignSystem {
        public static let brandPrimary = Color(red: 0.08627451211214066, green: 0.13333334028720856, blue: 0.545098066329956, opacity: 1)
        public static let brandSecondary = Color(red: 1, green: 0.13333334028720856, blue: 0.3607843220233917, opacity: 1)
        public static let neutralLightPure = Color(red: 1, green: 1, blue: 1, opacity: 1)
        public static let neutralDarkPure = Color(red: 0, green: 0, blue: 0, opacity: 1)
    }
}
