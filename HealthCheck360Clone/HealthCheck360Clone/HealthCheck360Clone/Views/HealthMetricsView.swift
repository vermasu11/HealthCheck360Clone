//
//  HealthMetricsView.swift
//  HealthCheck360Clone
//
//  Created by Sumit on 2/3/24.
//

import SwiftUI

struct HealthMetricsView: View {
    @ObservedObject var viewModel = HealthMetricsViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.healthData) { data in
                HStack {
                    Text(data.metricName)
                        .fontWeight(.bold)
                    Spacer()
                    Text("\(data.metricValue, specifier: "%.0f")")
                }
            }
            .navigationTitle("Health Metrics")
            .onAppear {
                viewModel.fetchHealthData()
            }
        }
    }
}


struct HealthMetricsView_Previews: PreviewProvider {
    static var previews: some View {
        HealthMetricsView()
    }
}
