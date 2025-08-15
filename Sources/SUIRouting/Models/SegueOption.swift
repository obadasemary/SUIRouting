//
//  SegueOption.swift
//  SUIRouting
//
//  Created by Abdelrahman Mohamed on 15.08.2025.
//

public enum SegueOption {
    case push, sheet, fullScreenCover
    
    var shouldAddNewNavigationView: Bool {
        switch self {
        case .push:
            return false
        case .sheet, .fullScreenCover:
            return true
        }
    }
}
