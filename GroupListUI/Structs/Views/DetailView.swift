//
//  DetailView.swift
//  JunkList
//
//  Created by Gene Backlin on 7/13/20.
//  Copyright © 2020 Gene Backlin. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.presentationMode) var presentationMode
    let title: String
    
    var body: some View {
        Text(title).padding()
            .navigationBarTitle(Text(title), displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                HStack {
                    Image(systemName: "arrow.left.circle")
                    Text("Grade Exam")
                }
                }, trailing:
                HStack {
                    Button("Prev") {
                        print("Prev tapped!")
                    }
                    Button("Next") {
                        print("Next tapped!")
                    }
            })
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(title: "Title")
    }
}
