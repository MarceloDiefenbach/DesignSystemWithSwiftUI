//
//  CornerRadius.swift
//  BubbleWord
//
//  Created by Marcelo Diefenbach on 19/11/22.
//

import Foundation

public enum CornerRadius: String {
    
    /// 0
    case none
    /// 8
    case xs
    /// 16
    case small
    /// 500
    case circular
    
    public var value: CGFloat {
        switch self {
        case .none:
            return 0
        case .xs:
            return 8
        case .small:
            return 16
        case .circular:
            return 500

        }
    }
}
