//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Sergio Sanchez-Alvares on 6/5/24.
//

import SwiftUI


struct ScrumsView: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        NavigationStack {
            List(scrums) { scrum in
                NavigationLink(destination: Text(scrum.title)) {
                    CardView(scrum: scrum)
                        .listRowBackground(scrum.theme.accentColor)
                }
            }
            .navigationTitle("Daily Scrums")
        }
    }
}


struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
