//
//  TypeButtonsView.swift
//  SomeDelivery
//
//  Created by Phillip Jagger on 28.11.2023.
//

import SwiftUI

struct TypeButtonsView: View {
    @State public var typeString = "Placeholder"
    
    var body: some View {
        ZStack {
            Text(typeString)
                .padding()
        }
        .background(
            Rectangle()
                .foregroundColor(Color(.customTheme))
                .frame(height: 32)
                .cornerRadius(16)
                .shadow(color: Color(.systemGray5), radius: 5)
        )
        .padding(.trailing, 10)
    }
}

#Preview {
    TypeButtonsView()
}
