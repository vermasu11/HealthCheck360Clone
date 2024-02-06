//
//  AppointmentViewModel.swift
//  HealthCheck360Clone
//
//  Created by Sumit on 2/3/24.
//

import Foundation
import Combine

class AppointmentViewModel: ObservableObject {
    @Published var appointments: [Appointment] = []
    private var cancellables: Set<AnyCancellable> = []

    func fetchAppointments() {
        // This should be replaced with actual data fetching logic, possibly from a local database or a web service
        let sampleAppointments = [
            Appointment(date: Date(), with: "Dr. Sumit"),
            // Add more sample data
        ]
        appointments = sampleAppointments
    }
}

