//
//  HealthMetricRowView.swift
//  HealthCheck360Clone
//
//  Created by Sumit on 2/4/24.
//

import SwiftUI

struct HealthMetric: Identifiable {
    var id = UUID()
    var name: String
    var value: String
    var riskLevel: RiskLevel
}

enum RiskLevel {
    case low, moderate, high, veryHigh
}

struct HealthMetricRowView: View {
    var metric: HealthMetric
    
    var body: some View {
        HStack {
            Text(metric.name)
            Spacer()
            Text(metric.value)
            // Will Add visual components to represent riskLevel, like a colored circle
            Circle()
                .fill(colorForRiskLevel(metric.riskLevel))
                .frame(width: 10, height: 10)
        }
    }
    
    private func colorForRiskLevel(_ riskLevel: RiskLevel) -> Color {
        switch riskLevel {
        case .low:
            return .green
        case .moderate:
            return .yellow
        case .high:
            return .orange
        case .veryHigh:
            return .red
        }
    }
}

struct HealthMetricRowView_Previews: PreviewProvider {
    static var previews: some View {
        
        let sampleMetric = HealthMetric(name: "BMI", value: "22.0", riskLevel: .moderate)
        HealthMetricRowView(metric: sampleMetric)
            .previewLayout(.sizeThatFits)
    }
}
