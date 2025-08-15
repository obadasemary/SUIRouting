//
//  Binding+EXT.swift
//  SUIRouting
//
//  Created by Abdelrahman Mohamed on 15.08.2025.
//
import SwiftUI

extension Binding where Value == Bool {
    
    init<T: Sendable>(ifNotNil value: Binding<T?>) {
        self.init {
            value.wrappedValue != nil
        } set: { newValue in
            if !newValue {
                value.wrappedValue = nil
            }
        }
    }
}
