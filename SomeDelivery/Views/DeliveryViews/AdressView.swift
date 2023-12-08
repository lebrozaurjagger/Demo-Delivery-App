//
//  AdressView.swift
//  SomeDelivery
//
//  Created by Phillip Jagger on 28.11.2023.
//

import SwiftUI

struct AdressView: View {
    var body: some View {
        VStack {
            Rectangle()
                .foregroundColor(Color(.customTheme))
                .cornerRadius(32)
                .frame(height: 256)
                .shadow(color: Color(.systemGray5), radius: 5)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    AdressView()
}
