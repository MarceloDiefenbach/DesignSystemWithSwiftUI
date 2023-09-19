//
//  File.swift
//  
//
//  Created by Marcelo Diefenbach on 19/09/23.
//

import Foundation
import SwiftUI

public enum AppColors {
    case brandPrimary
    case brandSecondary
    case neutralLightPure
    case neutralDarkPure
    
    var color: Color {
        switch self {
        case .brandPrimary:
            return Color(red: 0.08627451211214066, green: 0.13333334028720856, blue: 0.545098066329956, opacity: 1)
        case .brandSecondary:
            return Color(red: 1, green: 0.13333334028720856, blue: 0.3607843220233917, opacity: 1)
        case .neutralLightPure:
            return Color(red: 1, green: 1, blue: 1, opacity: 1)
        case .neutralDarkPure:
            return Color(red: 0, green: 0, blue: 0, opacity: 1)
        }
    }
}

