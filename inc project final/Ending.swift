//
//  Ending.swift
//  inc project final
//
//  Created by Dessen Tan on 20/10/24.
//


import SwiftUI
import AVKit
import AVFoundation

struct Ending: View {
    @State private var player = AVPlayer()
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundStyle(.black)
                .frame(width: 1000, height: 1000)
            VStack {
                VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "SST inc ending", withExtension: "mp4")!))
                    .frame(width: 500, height: 900)
            }
        }
    }
}
#Preview {
    Ending()
}
