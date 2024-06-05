//
//  CardView.swift
//  Scrumdinger
//
//  Created by Sergio Sanchez-Alvares on 6/5/24.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
//            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
            }
            .padding(.horizontal, 5)
            .font(.caption)
        }
        .padding(3)
        .foregroundColor(.black)
    }
}


struct CardView_Previews: PreviewProvider {
    static var scrum = DailyScrum.sampleData[0]
    static var previews: some View {
        CardView(scrum: scrum)
            .background(.blue)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
