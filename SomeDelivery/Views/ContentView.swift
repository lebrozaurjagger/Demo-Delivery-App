//
//  ContentView.swift
//  SomeDelivery
//
//  Created by Phillip Jagger on 28.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            MenuView()
            VStack {
                Spacer()
                HStack(alignment: .bottom) {
                    RectangleButtonView(customImage: "fork.knife", customText: "Menu")
                    RectangleButtonView(customImage: "location.fill", customText: "Delivery")
                    RectangleButtonView(customImage: "cart.fill", customText: "Cart")
                    RectangleButtonView(customImage: "person.circle.fill", customText: "Profile")
                }
                .background(
                    CustomBlur.Blur(style: .systemMaterial)
                        .frame(height: 145)
                )
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
