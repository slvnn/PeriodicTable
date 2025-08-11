//
//  SwiftUIView.swift
//  PeriodicTable
//
//  Created by miguel on 11/8/25.
//

import SwiftUI

struct ElementGridView: View {
    var element: Element
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Text(String(element.id))
                    Spacer()
                    Text(element.atomicMass, format: .number.precision(.fractionLength(0...3)))
                }
                .padding()
                
                Spacer()
                
                Text(element.name)
                    .padding()
                
            }
            
            
            Text(element.symbol)
                .font(.system(size: 40)).bold()
        }
        .frame(maxWidth: .infinity, minHeight: 130)
        .background(.thinMaterial)
        .clipShape(.rect(cornerRadius: 20))
        .overlay {
            RoundedRectangle(cornerRadius: 20)
                .stroke(.secondary, lineWidth: 2)
        }
    }
}
