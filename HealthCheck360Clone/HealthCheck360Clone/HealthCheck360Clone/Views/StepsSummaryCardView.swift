//
//  StepsSummaryCardView.swift
//  HealthCheck360Clone
//
//  Created by Sumit on 2/4/24.
//

import SwiftUI

struct StepsSummaryCardView: View {
    @State private var stepsTaken: Int = 5719
    @State private var stepsGoal: Int = 12000
    
    var body: some View {
        VStack {
            Text("Steps")
            ProgressView(value: Double(stepsTaken), total: Double(stepsGoal))
            Text("\(stepsTaken) steps taken")
          
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(12)
    }
}


struct StepsSummaryCardView_Previews: PreviewProvider {
    static var previews: some View {
        StepsSummaryCardView()
    }
}
