//
//  Chapter6.swift
//  inc project final
//
//  Created by Dessen Tan on 20/10/24.
//

import SwiftUI

struct Chapter6: View {
    @State private var text1 = ""
    @State private var showingAlert = false
    @State private var alertMessage = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Rectangle()
                    .foregroundColor(.black)
                    .frame(width: 500, height: 1200)
                HStack {
                    VStack{
                        Rectangle()
                            .frame(width: 200, height: 220)
                        ZStack{
                            Rectangle()
                                .padding(.bottom, 35.072)
                                .foregroundStyle(.gray)
                                .frame(width: 600, height: 100)
                                .cornerRadius(20)
                            Text("Detective")
                                .foregroundStyle(.white)
                                .padding(.bottom, 30.0)
                        }
                        VStack {
                            HStack{
                                ZStack{
                                    Rectangle()
                                        .foregroundColor(.blue)
                                        .frame(width: 320, height: 220)
                                        .cornerRadius(20)
                                    VStack{
                                        Text("Thank you for your help.")
                                            .padding()
                                            .padding(.bottom, 10.0)
                                            .foregroundColor(.white)
                                        Text("Thanks to your help, we were able to find them.")
                                            .multilineTextAlignment(.center)
                                            .lineLimit(5)
                                            .padding(.bottom, 10.0)
                                            .foregroundColor(.white)
                                            .frame(width: 300)
                                        Text("Looks like the Inc coins have a lock that needs a code")
                                            .multilineTextAlignment(.center)
                                            .lineLimit(5)
                                            .padding(.bottom, 10.0)
                                            .foregroundColor(.white)
                                            .frame(width: 300)
                                        Text("Hint: first character of previous answers")
                                            .foregroundStyle(.gray)
                                    }
                                }
                                .padding([.bottom, .trailing], 70.0)
                            }
                            ZStack{
                                Rectangle()
                                    .foregroundColor(.blue)
                                    .frame(width: 320, height: 160)
                                    .cornerRadius(20)
                                VStack{
                                    TextField("Enter the code", text: $text1)
                                        .background(Color.gray)
                                        .frame(width: 200)
                                        .cornerRadius(7)
                                        .foregroundColor(.white)
                                    Button {
                                        if text1 == "0D2TTTSM"  {
                                            alertMessage = "Correct! Move on to the end"
                                        } else {
                                            alertMessage = "Wrong! Try again."
                                        }
                                        showingAlert = true
                                    } label: {
                                        Text("Submit")
                                    }
                                    .background(Color.gray)
                                    .cornerRadius(5)
                                    .foregroundColor(.white)
                                    .alert(isPresented: $showingAlert) {
                                        Alert(title: Text("Result"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
                                    }
                                    if alertMessage == "Correct! Move on to the end"  {
                                        NavigationLink(destination: Ending()) {
                                            VStack {
                                                Spacer()
                                                HStack {
                                                    Spacer()
                                                    Text("The End")
                                                        .font(.headline)
                                                        .foregroundColor(.black)
                                                    Spacer()
                                                }
                                                Spacer()
                                            }
                                            .frame(width: 190, height: 50)
                                            .background(Color.white)
                                            .cornerRadius(10.0)
                                            .padding()
                                        }                                    }
                                }
                            }
                            Spacer()
                        }
                    }
                }
            }
        }
    }
}
#Preview {
    Chapter6()
}
