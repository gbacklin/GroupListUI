//
//  QuestionRow.swift
//  JunkList
//
//  Created by Gene Backlin on 7/14/20.
//  Copyright © 2020 Gene Backlin. All rights reserved.
//

import SwiftUI

struct QuestionRow: View {
    var question: QuestionPool

    var body: some View {
        NavigationLink(destination: DetailView(title: question.title)) {
            VStack(alignment: .leading) {
                Text("Question \(question.number + 1) -  \(question.title)")
                Spacer()
                HStack {
                    Text(question.questionText)
                        .fixedSize(horizontal: false, vertical: true)
                    if question.title == "E1A06" {
                        Image(systemName: "checkmark.circle")
                    }
                }
            }
            .padding(10)
        }
    }
}

struct QuestionRow_Previews: PreviewProvider {
    static var previews: some View {
        QuestionRow(question: QuestionPool(title: "E3A04", number: 2))
    }
}
