//
//  SurveyView.swift
//  HealthCheck360Clone
//
//  Created by Sumit on 2/3/24.
//

import SwiftUI

struct SurveyView: View {
    @ObservedObject var viewModel = SurveyViewModel()

    var body: some View {
        List(viewModel.surveyQuestions) { question in
            VStack(alignment: .leading) {
                Text(question.questionText)
                    .fontWeight(.bold)
                // Display options here, for simplicity, using Text. Consider using more interactive elements like Buttons or Picker.
                ForEach(question.options, id: \.self) { option in
                    Text(option)
                }
            }
        }
        .onAppear {
            viewModel.fetchSurveyQuestions()
        }
    }
}


struct SurveyView_Previews: PreviewProvider {
    static var previews: some View {
        SurveyView()
    }
}
