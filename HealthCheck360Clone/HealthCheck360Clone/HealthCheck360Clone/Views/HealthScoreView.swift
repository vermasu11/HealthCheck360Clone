//
//  HealthScoreView.swift
//  HealthCheck360Clone
//
//  Created by Sumit on 2/4/24.
//

import SwiftUI

struct HealthScoreView: View {
    @State private var healthScore: Int = 80
    
    @State private var healthMetrics: [HealthMetric] = []
    
    var body: some View {
        VStack {
            CircleProgressView(score: healthScore)
            ForEach(healthMetrics) { metric in
                // Custom list item view for each health metric
                HealthMetricRowView(metric: metric)
            }
        }
    }
}


struct HealthScoreView_Previews: PreviewProvider {
    static var previews: some View {
        HealthScoreView()
    }
}
