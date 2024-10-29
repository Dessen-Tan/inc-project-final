//
//  Chapter5.swift
//  inc project final
//
//  Created by Dessen Tan on 20/10/24.
//

import SwiftUI

struct Chapter5: View {
    @State private var text1 = ""
    @State private var text2 = ""
    @State private var showingAlert = false
    @State private var alertMessage = ""
    
    var body: some View {
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
                                    Text("You receive a anonymous message:")
                                        .padding()
                                        .padding(.bottom, 10.0)
                                        .foregroundColor(.white)
                                    Text("Where do you go eat?")
                                        .multilineTextAlignment(.center)
                                        .lineLimit(5)
                                        .padding(.bottom, 10.0)
                                        .foregroundColor(.white)
                                        .frame(width: 300)
                                    Text("Hint: Whats your favourite stall?")
                                        .foregroundStyle(.gray)
                                        .padding()
                                        .padding(.bottom, 10.0)
                                        .foregroundColor(.white)
                                    Text("The coins are in a machine that cooks food using radiation")
                                        .multilineTextAlignment(.center)
                                        .lineLimit(5)
                                        .padding(.bottom, 10.0)
                                        .foregroundColor(.white)
                                        .frame(width: 300)
                                }
                            }
                            .padding([.bottom, .trailing], 70.0)
                        }
                        ZStack{
                            Rectangle()
                                .foregroundColor(.blue)
                                .frame(width: 320, height: 140)
                                .cornerRadius(20)
                            VStack{
                                TextField("Enter the place", text: $text1)
                                    .background(Color.gray)
                                    .frame(width: 200)
                                    .cornerRadius(7)
                                    .foregroundColor(.white)
                                TextField("Enter the place", text: $text2)
                                    .background(Color.gray)
                                    .frame(width: 200)
                                    .cornerRadius(7)
                                    .foregroundColor(.white)
                                Button {
                                    if text1 == "SST Canteen" && text2 == "Microwave" {
                                        alertMessage = "Correct! Move on to the next Chapter"
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
                            }
                        }
                        .padding(.leading, 71.868)
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    Chapter5()
}
