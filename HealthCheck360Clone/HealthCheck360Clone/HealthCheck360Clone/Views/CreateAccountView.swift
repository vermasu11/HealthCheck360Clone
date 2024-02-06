//
//  CreateAccountView.swift
//  HealthCheck360Clone
//
//  Created by Sumit on 2/6/24.
//

import SwiftUI

struct CreateAccountView: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var birthdate: String = ""
    @State private var isMale: Bool = true
    @State private var feet: String = ""
    @State private var inches: String = ""
    
    var body: some View {
        ZStack {
            Image("loginView")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            VStack (spacing: 40){
                Spacer()
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 90, height: 90)
                    .padding([.bottom], -25)
                Text("CREATE AN ACCOUNT")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Group {
                    CustomUnderlinedTextField(placeholder: "First Name", text: $firstName)
                    CustomUnderlinedTextField(placeholder: "Last Name", text: $lastName)
                    CustomUnderlinedTextField(placeholder: "Birthdate (mm/dd/yyyy)", text: $birthdate)
                    
                    HStack {
                        Button("Male", action: { isMale = true })
                            .foregroundColor(isMale ? .white : .gray)
                        Spacer()
                        Button("Female", action: { isMale = false })
                            .foregroundColor(!isMale ? .white : .gray)
                    }
                    .padding(.horizontal, 20)
                    
                    HStack(spacing: 20) {
                        CustomUnderlinedTextField(placeholder: "Feet", text: $feet)
                        CustomUnderlinedTextField(placeholder: "Inches", text: $inches)
                    }
                }
                .padding(.horizontal, 20)
                
                Button("Next") {
                    // Handle next action here
                }
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.green)
                .cornerRadius(10)
                .padding(.horizontal, 20)
                
                Spacer()
                Button("Have an account? Sign in", action: {})
                    .foregroundColor(.white)
                Button("Forgot username or password?", action: {})
                    .foregroundColor(.white)
            }
            .padding()
        }
    }
}

struct CustomUnderlinedTextField: View {
    var placeholder: String
    @Binding var text: String
    
    var body: some View {
        VStack {
            TextField(placeholder, text: $text)
                .foregroundColor(.white)
                .accentColor(.white) // Cursor color
            Divider().background(Color.white)
        }
    }
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView()
    }
}

