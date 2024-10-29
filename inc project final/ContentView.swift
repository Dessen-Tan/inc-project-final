//
//  ContentView.swift
//  inc project final
//
//  Created by Dessen Tan on 20/10/24.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Rectangle()
                    .fill(Color.black)
                    .frame(width: 1000, height: 1999)
                    .ignoresSafeArea()
                
                VStack {
                    Image(systemName: "person.fill")
                        .padding(.bottom, 30.0)
                        .imageScale(.large)
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
                    
                    Text("Welcome")
                        .foregroundColor(.white)
                    
                    Text("detectives")
                        .foregroundColor(.white)
                        .padding(.bottom, 30.0)
                    
                    NavigationLink(destination: Timeline_View()) {
                        VStack {
                            Spacer()
                            HStack {
                                Spacer()
                                Text("Begin")
                                    .font(.headline)
                                    .foregroundColor(.black)
                                Spacer()
                            }
                            Spacer()
                        }
                        .frame(width: 170, height: 50)
                        .background(Color.white)
                        .cornerRadius(10.0)
                        .padding()
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
