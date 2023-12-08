//
//  MenuDailyView.swift
//  SomeDelivery
//
//  Created by Phillip Jagger on 28.11.2023.
//

import SwiftUI

struct MenuDailyView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Daily Specialty!")
                Spacer()
                
                ZStack {
                    TypeButtonsView(typeString: "$ 86.04")
                }
            }
            
            ZStack {
                HStack {
                    Image("pizza")
                        .resizable()
                        .frame(width: 140, height: 140)
                    Spacer()
                    
                    VStack {
                        Text("Pepperoni Pizza")
                            .padding(.bottom, 10)
                        TypeButtonsView(typeString: "$ 15.90")
                    }
                    .padding(.trailing, 32)
                }
            }
            .background(
                Rectangle()
                    .cornerRadius(10)
                    .foregroundColor(Color(.systemGray6))
                    .shadow(color: Color(.systemGray6), radius: 5)
            )
        }
    }
}

#Preview {
    MenuDailyView()
}
