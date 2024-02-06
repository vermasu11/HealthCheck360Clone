//
//  CircleProgressView.swift
//  HealthCheck360Clone
//
//  Created by Sumit on 2/4/24.
//

import SwiftUI

struct CircleProgressView: View {
    var score: Int
    
    var body: some View {
        // Use system provided or custom drawing to create a circular progress view
        Text("Health Score: \(score)")
    }
}


struct CircleProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CircleProgressView(score: 80)
    }
}
