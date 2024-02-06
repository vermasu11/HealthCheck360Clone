//
//  Survey.swift
//  HealthCheck360Clone
//
//  Created by Sumit on 2/3/24.
//

import Foundation


struct SurveyQuestion: Identifiable, Codable {
    var id: UUID = UUID()
    var questionText: String
    var options: [String]
    var answer: String?
}
