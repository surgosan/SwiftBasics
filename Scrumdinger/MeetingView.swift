//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Sergio Sanchez-Alvares on 6/5/24.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        // ProgressView will be used to show time elapsed
        VStack {
            ProgressView(value: 5, total: 15)
            HStack {
                VStack(alignment: .leading) {
                    Text("Time Elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text("Time Remaining")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.bottomhalf.fill")
                }
            }
            .accessibilityElement(children: /*@START_MENU_TOKEN@*/.ignore/*@END_MENU_TOKEN@*/)
            .accessibilityLabel("Tme Remaining")
            .accessibilityValue("10 Minutes")
            
            Circle()
                .strokeBorder(lineWidth: 24)
            
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }
            }
            .accessibilityLabel("Next Speaker")
        }
        .padding()
    }
}

#Preview {
    MeetingView()
}
