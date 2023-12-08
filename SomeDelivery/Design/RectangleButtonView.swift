//
//  RectangleButtonView.swift
//  SomeDelivery
//
//  Created by Phillip Jagger on 28.11.2023.
//

import SwiftUI

struct RectangleButtonView: View {
    @State public var customImage = "plus"
    @State public var customText = "Placeholder"
    
    var body: some View {
        HStack(alignment: .top) {
            Spacer()
            
            VStack {
                Button(action: {
                    
                }) {
                    ZStack {
                        Rectangle()
                            .frame(width: 50,
                                   height: 50)
                            .foregroundColor(Color(.systemBackground))
                            .cornerRadius(12)
                            .padding(8)
                            .shadow(color: Color(.systemGray5), radius: 5)
                        Image(systemName: customImage)
                            .foregroundColor(Color(.systemGray))
                            .font(.title)
                    }
                    .padding(1)
                }
                Text(customText)
                    .foregroundColor(Color(.systemGray))
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .padding(.top, -8)
                    .shadow(color: Color(.systemGray5), radius: 5)
            }
            .padding(.bottom, 40)
            
            Spacer()
        }
    }
}

#Preview {
    RectangleButtonView()
}
