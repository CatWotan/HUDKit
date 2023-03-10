//
//  View+.swift
//
//
//

import SwiftUI

@available(iOS 14.0, *)
public extension View {
    func uses(_ hudManager: HUDManager, options: HUDOptions = HUDOptions()) -> some View {
        modifier(HUDViewModifier(hudManager: hudManager, options: options))
    }
}
