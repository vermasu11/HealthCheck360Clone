//
//  LoginView.swift
//  HealthCheck360Clone
//
//  Created by Sumit on 2/3/24.
//

import SwiftUI
import LocalAuthentication

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isFaceIDEnabled: Bool = false
    
    @State private var showingCreateAccount = false
    
    var body: some View {
        ZStack {
            Image("loginView")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 30) {
                Spacer()
                
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 90, height: 90)
                    .padding([.bottom], -25)
                
                Text("SIGN IN")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding([.bottom], 40)
                
                UserCredentials(text: $username, placeholder: "Username", imageName: "person")
                
                UserCredentials(text: $password, placeholder: "Password", imageName: "lock", isSecure: true)
                
                
                
                Toggle("Set up Face ID", isOn: $isFaceIDEnabled)
                    .toggleStyle(SwitchToggleStyle(tint: .green))
                    .padding(.horizontal, 20)
                    .foregroundColor(.white)
                Divider()
                    .background(Color.white)
                    .padding(.horizontal, 20)
                    .padding(.top, -20)
                
                Button(action: signInAction) {
                    Text("Sign In")
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal, 20)
                
                VStack(spacing: 10) {
                    Button("Forgot username or password?", action: forgotPasswordAction)
                        .foregroundColor(.white)
                    Button("Create an account", action: createAccountAction)
                        .foregroundColor(.white)
                }
                .sheet(isPresented: $showingCreateAccount) {
                    CreateAccountView()
                }
                
                Spacer()
            }
        }
    }
    
    func signInAction() {
        // Implement sign-in logic, including Face ID authentication
        authenticateWithFaceID()
    }
    
    func forgotPasswordAction() {
        // Handle forgot password action
    }
    
    func createAccountAction() {
        showingCreateAccount = true
    }
    
    func authenticateWithFaceID() {
        guard isFaceIDEnabled else { return }
        let context = LAContext()
        var error: NSError?
        
        // Check if Face ID is available
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            let reason = "Please authenticate using Face ID."
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in
                // Handle authentication result
                DispatchQueue.main.async {
                    if success {
                        // Authentication succeeded, proceed to the main app
                    } else {
                        // Authentication failed, handle errors
                    }
                }
            }
        } else {
            // Face ID not available, handle errors
        }
    }
}

struct UserCredentials: View {
    @Binding var text: String
    var placeholder: String
    var imageName: String
    var isSecure: Bool = false
    
    var body: some View {
        VStack {

            HStack {
                Image(systemName: imageName)
                    .foregroundColor(.white)
        
                ZStack {
                    
                    if isSecure {
                        SecureField(placeholder, text: $text)
                            .foregroundColor(.white)
                    } else {
                        TextField(placeholder, text: $text)
                            .foregroundColor(.white)
                    }
                }
            }
            .padding(.vertical, 10)
            
            Divider()
                .background(Color.white)
        }
        .padding(.horizontal, 20)
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

