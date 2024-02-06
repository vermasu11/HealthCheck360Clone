//
//  SurveyViewModel.swift
//  HealthCheck360Clone
//
//  Created by Sumit on 2/3/24.
//

import Foundation

import Combine

class SurveyViewModel: ObservableObject {
    @Published var surveyQuestions: [SurveyQuestion] = []
    
    // Function to fetch survey questions
    func fetchSurveyQuestions() {
        // This would be replaced with actual data fetching logic
        self.surveyQuestions = [
            SurveyQuestion(questionText: "How often do you exercise?", options: ["Daily", "Weekly", "Rarely", "Never"], answer: nil),
            // Add more questions
        ]
    }
}
