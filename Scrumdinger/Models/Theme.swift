//
//  Theme.swift
//  Scrumdinger
//
//  Created by Sergio Sanchez-Alvares on 6/5/24.
//

import SwiftUI

enum Theme: String {
    case bubblegum
    case indigo
    
    var accentColor: Color {
        switch self {
        case .bubblegum: return .blue
        case .indigo: return .green
        }
    }
    
    var mainColor: Color {
        Color(rawValue)
    }
}


