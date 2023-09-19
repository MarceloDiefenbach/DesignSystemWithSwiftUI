//
//  FontSize.swift
//  BubbleWord
//
//  Created by Marcelo Diefenbach on 19/11/22.
//

import Foundation
import SwiftUI

public enum AppFonts {
    case largeTitle
    case mediumBold
    case normalBold
    case normalRegular
    case smallRegular
    case smallBold
    
    var font: Font {
        switch self {
        case .largeTitle:
            return Font.system(size: 34, weight: .bold, design: .default)
        case .mediumBold:
            return Font.system(size: 24, weight: .light, design: .default)
        case .normalBold:
            return Font.system(size: 16, weight: .bold, design: .default)
        case .normalRegular:
            return Font.system(size: 16, weight: .regular, design: .default)
        case .smallRegular:
            return Font.system(size: 12, weight: .regular, design: .default)
        case .smallBold:
            return Font.system(size: 12, weight: .bold, design: .default)
        }
    }
}
