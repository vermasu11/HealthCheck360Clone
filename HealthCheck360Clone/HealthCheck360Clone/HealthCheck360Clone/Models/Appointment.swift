//
//  Appointment.swift
//  HealthCheck360Clone
//
//  Created by Sumit on 2/3/24.
//

import Foundation

struct Appointment: Identifiable, Codable {
    var id: UUID = UUID()
    var date: Date
    var with: String // Health coach or doctor's name
    // Will add more details like location, type (virtual, in-person), etc.
}
