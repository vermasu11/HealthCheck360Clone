//
//  AuthenticationViewModel.swift
//  HealthCheck360Clone
//
//  Created by Sumit on 2/3/24.
//

import Foundation

class AuthenticationViewModel: ObservableObject {
    private var backendService = BackendService.shared
    
    func createUser(username: String, email: String, password: String) {
        backendService.createUser(username: username, email: email, password: password) { success, error in
            if success {
                // Handle user creation success, e.g., navigate to the main app view
            } else {
                // Handle error, e.g., show an alert to the user
            }
        }
    }

    func loginUser(username: String, password: String, completion: @escaping (Bool) -> Void) {
        // Simulate an asynchronous login process
        backendService.loginUser(username: username, password: password) { success, error in
            if success {
                // Assume login is successful
                DispatchQueue.main.async {
                    completion(true)
                }
            } else {
                // Handle login failure or error
                DispatchQueue.main.async {
                    completion(false)
                }
            }
        }
    }

}

