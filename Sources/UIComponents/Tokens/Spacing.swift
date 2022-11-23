//
//  Spacing.swift
//  BubbleWord
//
//  Created by Marcelo Diefenbach on 19/11/22.
//

import Foundation

enum Spacing: String {
    /// 8
    case quarck
    /// 16
    case nano
    /// 16
    case xxxs
    /// 20
    case defaultMargin
    /// 14
    case xxs
    /// 32
    case xs
    /// 40
    case small
    /// 48
    case medium
    /// 58
    case large
    
    var value: CGFloat {
        switch self {
        case .quarck:
            return 4
        case .nano:
            return 8
        case .xxxs:
            return 16
        case .defaultMargin:
            return 20
        case .xxs:
            return 24
        case .xs:
            return 32
        case .small:
            return 40
        case .medium:
            return 48
        case .large:
            return 56
        }
    }
}
