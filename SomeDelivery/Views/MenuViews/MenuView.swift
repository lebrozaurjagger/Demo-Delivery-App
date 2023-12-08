//
//  MenuView.swift
//  SomeDelivery
//
//  Created by Phillip Jagger on 28.11.2023.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        ScrollViewReader { scrollView in
            ScrollView(showsIndicators: false) {
                MenuDailyView()
                    
//                    Spacing:
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(Color(.systemGray6))
                    .padding(.top, 10)
                    
                ScrollViewReader { scrollView in
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            TypeButtonsView(typeString: "Pizza")
                            TypeButtonsView(typeString: "Burgers")
                            TypeButtonsView(typeString: "Snacks")
                            TypeButtonsView(typeString: "Soft Drinks")
                            TypeButtonsView(typeString: "Sauces")
                        }
                    }
                }
                    
//                    Pizza Menu:
                HStack {
                    Text("Pizza")
                        .font(.title)
                        .fontWeight(.medium)
                        .padding()
                    Spacer()
                }
                MenuItemView(itemName: "Cheese Pizza", itemPrice: "$ 17.90")
                MenuItemView(itemName: "Pepperoni Pizza", itemPrice: "$ 15.90")
                MenuItemView(itemName: "Hawaian Pizza", itemPrice: "$ 17.90")
                    
//                    Burgers Menu:
                HStack {
                    Text("Burgers")
                        .font(.title)
                        .fontWeight(.medium)
                        .padding()
                    Spacer()
                }
                MenuItemView(itemName: "Vegan Burger", itemPrice: "$ 17.90")
                MenuItemView(itemName: "Cheeseburger", itemPrice: "$ 15.90")
                MenuItemView(itemName: "Chicken Burger", itemPrice: "$ 17.90")
                    
//                    Snacks Menu:
                HStack {
                    Text("Snacks")
                        .font(.title)
                        .fontWeight(.medium)
                        .padding()
                    Spacer()
                }
                MenuItemView(itemName: "French Fries", itemPrice: "$ 17.90")
                MenuItemView(itemName: "Meatballs", itemPrice: "$ 15.90")
                    
//                    Drinks Menu:
                HStack {
                    Text("Soft Drinks")
                        .font(.title)
                        .fontWeight(.medium)
                        .padding()
                    Spacer()
                }
                MenuItemView(itemName: "Coke, 0.5L", itemPrice: "$ 17.90")
                MenuItemView(itemName: "Sprite, 0.5L", itemPrice: "$ 15.90")
                MenuItemView(itemName: "Fanta, 0.5L", itemPrice: "$ 17.90")
                MenuItemView(itemName: "Latte, 0.3L", itemPrice: "$ 15.90")
                MenuItemView(itemName: "Cappucino, 0.3L", itemPrice: "$ 15.90")
                    
//                    Sauces:
                HStack {
                    Text("Sauces")
                        .font(.title)
                        .fontWeight(.medium)
                        .padding()
                    Spacer()
                }
                MenuItemView(itemName: "Cheese Sauce", itemPrice: "$ 17.90")
                MenuItemView(itemName: "Ranch Sauce", itemPrice: "$ 15.90")
            
//                    Safe zone:
                Rectangle()
                    .opacity(0)
                    .frame(height: 120)
            }
            .padding()
            .ignoresSafeArea(edges: .bottom)
        }
    }
}

#Preview {
    MenuView()
}
