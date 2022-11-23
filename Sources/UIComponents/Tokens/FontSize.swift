//
//  FontSize.swift
//  BubbleWord
//
//  Created by Marcelo Diefenbach on 19/11/22.
//

import Foundation

enum FontSize: String {
    /// 12
    case xxs
    /// 16
    case xs
    /// 20
    case small
    /// 24
    case medium
    /// 32
    case large
    /// 40
    case extraLarge
    /// 60
    case extraExtraLarge
    
    var value: CGFloat {
        switch self {
        case .xxs:
            return 12
        case .xs:
            return 16
        case .small:
            return 20
        case .medium:
            return 24
        case .large:
            return 32
        case .extraLarge:
            return 40
        case .extraExtraLarge:
            return 60
        }
    }
}
