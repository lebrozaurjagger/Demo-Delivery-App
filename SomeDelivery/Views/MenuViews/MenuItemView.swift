//
//  MenuItemView.swift
//  SomeDelivery
//
//  Created by Phillip Jagger on 28.11.2023.
//

import SwiftUI

struct MenuItemView: View {
    @State public var itemName = "Name"
    @State public var itemPrice = "$ 00.00"
    
    var body: some View {
        ZStack {
            HStack {
                Image("pizza")
                    .resizable()
                    .frame(width: 140, height: 140)
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text(itemName)
                        .padding(.trailing, 15)
                        .padding(.bottom, 10)
                    TypeButtonsView(typeString: itemPrice)
                }
            }
        }
        
        Rectangle()
            .frame(height: 1)
            .foregroundColor(Color(.systemGray6))
            .padding(.top, 10)
    }
}

#Preview {
    MenuItemView()
}
