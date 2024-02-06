//
//  Extension.swift
//  HealthCheck360Clone
//
//  Created by Sumit on 2/3/24.
//

import Foundation

import SwiftUI

extension View {
    func framedWithShadow() -> some View {
        self.frame(maxWidth: .infinity)
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
    }
}

