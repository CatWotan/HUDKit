//
//  HUDManager.swift
//
//
//

import SwiftUI

@available(iOS 14.0, *)
public class HUDManager: ObservableObject {
    public var message: String = ""
    @Published public var isPresented: Bool = false
    public var showsProgress: Bool = true
    
    public init() {}
    
    public func show(_ message: String) {
        showsProgress = true
        self.message = message
        withAnimation {
            isPresented = true
        }
    }
    
    public func update(_ message: String) {
        show(message)
    }
    
    public func hide() {
        withAnimation {
            isPresented = false
        }
    }
    
    public func hide(_ message: String) {
        showsProgress = false
        self.message = message
        isPresented = true
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
            withAnimation {
                self.isPresented = false
            }
        }
    }
}
