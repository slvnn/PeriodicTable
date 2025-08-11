//
//  ElementView.swift
//  PeriodicTable
//
//  Created by miguel on 11/8/25.
//

import SwiftUI

struct ElementView: View {
    var element: Element
    
    var body: some View {
        List {
            VStack(alignment: .center) {
                Text(element.symbol)
                    .font(.system(size: 100)).bold()
                
                Text("\(element.name) - \(element.id)")
                    .font(.title3)
            }
            .padding(.vertical)
            .frame(maxWidth: .infinity, alignment: .center)
            .listRowBackground(Color.black.opacity(0.4))
            
            Section("Information") {
                Text("Atomic mass: \(element.atomicMass.formatted(.number.precision(.fractionLength(0...3))))")
                
                HStack {
                    if let melting = element.melting {
                        Text("Melting: \(melting) °C")
                    } else {
                        Text("Melting: -")
                    }
                    
                    Spacer()
                    Divider()
                    Spacer()
                    
                    if let boiling = element.boiling {
                        Text("Boiling: \(boiling) °C")
                    } else {
                        Text("Boiling: -")
                    }
                }
                
                if let yearDiscovery = element.yearDiscovery {
                    Text("Year of discovery: \(yearDiscovery)")
                }
            }
            .listRowBackground(Color.black.opacity(0.4))
            
            Section("Description") {
                Text(element.description)
            }
            .listRowBackground(Color.black.opacity(0.4))
        }
        .colorScheme(.dark)
        .scrollContentBackground(.hidden)
        .background(Color.darkBackground.gradient)
    }
}
