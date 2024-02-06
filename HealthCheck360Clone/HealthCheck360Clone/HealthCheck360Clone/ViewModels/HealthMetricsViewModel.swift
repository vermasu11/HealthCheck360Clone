//
//  HealthMetricsViewModel.swift
//  HealthCheck360Clone
//
//  Created by Sumit on 2/3/24.
//

import Foundation
import Combine

class HealthMetricsViewModel: ObservableObject {
    @Published var healthData: [HealthData] = []

    func fetchHealthData() {
        // Placeholder for fetching health data logic
        let sampleData = [
            HealthData(metricName: "Steps", metricValue: 10000),
            // Add more sample data
        ]
        healthData = sampleData
    }
}

