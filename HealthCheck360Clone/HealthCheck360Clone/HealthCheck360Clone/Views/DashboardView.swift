//
//  DashboardView.swift
//  HealthCheck360Clone
//
//  Created by Sumit on 2/4/24.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        ScrollView {
            VStack {
                // This would be a custom view showing the steps card and more
                StepsSummaryCardView()
                // Add more cards for other health metrics
            }
        }
        .navigationTitle("Dashboard")
    }
}


struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
