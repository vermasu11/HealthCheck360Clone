//
//  ContentView.swift
//  HealthCheck360Clone
//
//  Created by Sumit on 2/3/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var authViewModel = AuthenticationViewModel()
    @State private var isAuthenticated = false

    var body: some View {
        // Check if the user is authenticated
        if isAuthenticated {
            // Main app view
            TabView {
                DashboardView()
                    .tabItem {
                        Label("Dashboard", systemImage: "house")
                    }
                SurveyView()
                    .tabItem {
                        Label("Survey", systemImage: "list.bullet")
                    }
                
                AppointmentView()
                    .tabItem {
                        Label("Appointments", systemImage: "calendar")
                    }
                
                HealthMetricsView()
                    .tabItem {
                        Label("Health", systemImage: "heart")
                    }
            }
        } else {
            // Authentication view
            LoginView()
            
            //authViewModel: authViewModel, isAuthenticated: $isAuthenticated
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
