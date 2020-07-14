//
//  ContentView.swift
//  JunkList
//
//  Created by Gene Backlin on 7/13/20.
//  Copyright © 2020 Gene Backlin. All rights reserved.
//

import SwiftUI

struct Group: Identifiable {
    var id = UUID()
    var title:String
    var questions:[QuestionPool]
}

struct QuestionPool: Identifiable{
    var id = UUID()
    var title: String
    var number: Int
    let questionText = "With your transceiver displaying the carrier frequency of phone signals, you hear a DX station calling CQ on 3.601 MHz LSB. Is it legal to return the call using lower sideband on the same frequency?"
}

var groupData =  [
    Group(
        title: "E1",
        questions: [
            QuestionPool(title: "E1A04", number: 1),
            QuestionPool(title: "E1A05", number: 2),
            QuestionPool(title: "E1A06", number: 3),
            QuestionPool(title: "E1A07", number: 4),
            QuestionPool(title: "E1A08", number: 5),
            QuestionPool(title: "E1A09", number: 6),
            QuestionPool(title: "E1A10", number: 7)
        ]
    ),
    Group(
        title: "E2",
        questions: [
            QuestionPool(title: "E2A04", number: 1),
            QuestionPool(title: "E2A05", number: 2),
            QuestionPool(title: "E2A06", number: 3),
            QuestionPool(title: "E2A07", number: 4)
        ]
    ),
    Group(
        title: "E3",
        questions: [
            QuestionPool(title: "E3A04", number: 1),
            QuestionPool(title: "E3A05", number: 2),
            QuestionPool(title: "E3A06", number: 3),
            QuestionPool(title: "E3A07", number: 4),
            QuestionPool(title: "E3A08", number: 5),
            QuestionPool(title: "E3A09", number: 6),
            QuestionPool(title: "E3A10", number: 7)
        ]
    )
]

struct ContentView: View {
    var groups = groupData
    
    var body: some View {
        NavigationView {
            List() {
                ForEach(groupData) { group in
                    Section(header: Text(group.title)) {
                        ForEach(group.questions) { question in
                            QuestionRow(question: question)
                        }
                    }
                }
            }
            .navigationBarTitle("Technician")
            .navigationBarItems(leading: Button("Cancel") {
                print("Cancel tapped!")
                }, trailing: Button("Grade") {
                    print("Grade tapped!")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
