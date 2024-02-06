//
//  HealthData.swift
//  HealthCheck360Clone
//
//  Created by Sumit on 2/3/24.
//

import Foundation

struct HealthData: Identifiable, Codable {
    var id: UUID = UUID()
    var metricName: String
    var metricValue: Double
    // More properties as needed
}
