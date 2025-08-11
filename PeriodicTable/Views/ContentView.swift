//
//  ContentView.swift
//  PeriodicTable
//
//  Created by miguel on 11/8/25.
//

import SwiftUI

extension ShapeStyle {
    static var darkBackground: Color {
        Color(red: 0.14, green: 0.06, blue: 0.3)
    }
}

struct ContentView: View {
    @State private var searchField = ""
    let elements = Bundle.main.loadElements("elements")
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(searchResults, id: \.id) { element in
                        NavigationLink {
                            ElementView(element: element)
                        } label: {
                            ElementGridView(element: element)
                                .tint(.white)
                        }
                    }
                    
                }
                .padding([.horizontal, .vertical])
            }
            .navigationTitle("Periodic Table")
            .background(Color.darkBackground.gradient)
        }
        .searchable(text: $searchField)
        .colorScheme(.dark)
        .tint(.primary)
    }
    
    var searchResults: [Element] {
        if searchField.isEmpty {
            return elements
        } else {
            var toReturn = [Element]()
            for element in elements {
                if element.name.contains(searchField) {
                    toReturn.append(element)
                }
            }
            return toReturn
        }
    }
}

#Preview {
    ContentView()
}
