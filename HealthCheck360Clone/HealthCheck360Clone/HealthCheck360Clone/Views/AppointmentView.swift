//
//  AppointmentView.swift
//  HealthCheck360Clone
//
//  Created by Sumit on 2/3/24.
//

import SwiftUI

struct AppointmentView: View {
    @ObservedObject var viewModel = AppointmentViewModel()

    var body: some View {
        List(viewModel.appointments) { appointment in
            VStack(alignment: .leading) {
                Text("Appointment with \(appointment.with)")
                Text("Date: \(appointment.date, style: .date)")
                // Add more details as needed
            }
        }
        .onAppear {
            viewModel.fetchAppointments()
        }
    }
}


struct AppointmentView_Previews: PreviewProvider {
    static var previews: some View {
        AppointmentView()
    }
}
