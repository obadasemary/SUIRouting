//
//  AnyDestination.swift
//  SUIRouting
//
//  Created by Abdelrahman Mohamed on 15.08.2025.
//

import SwiftUI

@MainActor
public struct AnyDestination: @preconcurrency Hashable {
    let id = UUID().uuidString
    var destination: AnyView
    
    public init<T: View>(destination: T) {
        self.destination = AnyView(destination)
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    public static func == (lhs: AnyDestination, rhs: AnyDestination) -> Bool {
        lhs.hashValue == rhs.hashValue
    }
}
