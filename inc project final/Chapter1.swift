//
//  Chapter1.swift
//  inc project final
//
//  Created by Dessen Tan on 20/10/24.
//


import SwiftUI

struct Chapter1: View {
    @State private var text1 = ""
    @State private var text2 = ""
    @State private var text3 = ""
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
                            .frame(width: 500, height: 100)
                        Text("Detective")
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 30.0)
                    }
                    VStack {
                        HStack{
                            ZStack{
                                Rectangle()
                                    .foregroundColor(.blue)
                                    .frame(width: 320, height: 210)
                                    .cornerRadius(20)
                                VStack{
                                    Text("Looks like the Tall Avyan left a note!")
                                        .padding()
                                        .padding(.bottom, 10.0)
                                        .foregroundColor(.white)
                                    Text("Dover's cliffs, white steep,\nTwo and nine, a fateful day,\nsoldiers cross the sea.")
                                        .multilineTextAlignment(.center)
                                        .lineLimit(5)
                                        .padding(.bottom, 10.0)
                                        .foregroundColor(.white)
                                        .frame(width: 300)
                                    Text("598 inc coin is worth 1 bitcoin,  and 1 bitcoin is worth $89,733, How much is $4486650 in Inc coin I stole?")
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
                                TextField("Enter the date, dd/mm", text: $text1)
                                    .background(Color.gray)
                                    .frame(width: 200)
                                    .cornerRadius(7)
                                    .foregroundColor(.white)
                                TextField("Enter the location", text: $text2)
                                    .background(Color.gray)
                                    .frame(width: 200)
                                    .cornerRadius(7)
                                    .foregroundColor(.white)
                                TextField("Enter the amount", text: $text3)
                                    .background(Color.gray)
                                    .frame(width: 200)
                                    .cornerRadius(7)
                                    .foregroundColor(.white)
                                Button {
                                    if text1 == "02/09" && text2 == "Dover" && text3 == "29900" {
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
    Chapter1()
}
