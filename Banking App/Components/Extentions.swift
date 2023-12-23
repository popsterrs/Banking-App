//
// Extentions.swift
// Banking App
//
// Created by popsters on 23/12/2023
//
// Copyright © 2023
// All Rights Reserved.


import SwiftUI

extension View{
    func closeKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for :nil)
    }
    
    func disableWithOpacity(_ condition: Bool) -> some View {
        self
            .disabled(condition)
            .opacity(condition ? 0.6 : 1)
    }
    
    func hAlign(_ alignment: Alignment) -> some View {
        self
            .frame(maxWidth: . infinity,alignment: alignment)
    }
    
    func vAlign(_ alignment: Alignment) -> some View {
        self
            .frame(maxHeight: . infinity,alignment: alignment)
    }
    
    func border(_ width: CGFloat,_ color: Color) -> some View {
        self
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
            .background {
                RoundedRectangle(cornerRadius: 5, style: .continuous)
                    .stroke(color, lineWidth: width)
            }
    }
    
    func fillView(_ color: Color) -> some View {
        self
            .background {
                RoundedRectangle(cornerRadius: 5, style: .continuous)
                    .fill(color)
            }
    }
    
    func fillViewPadding(_ color: Color) -> some View {
        self
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
            .background {
                RoundedRectangle(cornerRadius: 5, style: .continuous)
                    .fill(color)
            }
    }
    
    func bottomGradient() -> some View {
        self
            .overlay(content: {
                ZStack(alignment: .bottom) {
                    Rectangle()
                        .fill(
                            .linearGradient(colors: [
                                .black.opacity(0),
                                .black.opacity(0.1),
                                .black.opacity(0.3),
                                .black.opacity(0.5),
                                .black.opacity(0.8),
                                .black.opacity(1),
                            ], startPoint: .top, endPoint: .bottom)
                        )
                }
            })
    }
    
    func getSafeAreaTop() -> CGFloat{
        let keyWindow = UIApplication.shared.connectedScenes
            .filter({$0.activationState == .foregroundActive})
            .map({$0 as? UIWindowScene})
            .compactMap({$0})
            .first?.windows
            .filter({$0.isKeyWindow}).first
        return keyWindow?.safeAreaInsets.top ?? 0
    }
    
    func stringDateToYear(string: String) -> String {
        let array = string.components(separatedBy: "-")
        
        return array[0]
    }
    
    func minutesToHoursAndMinutes(int: Int) -> (hours: Int, minutes: Int)  {
        let hours = int / 60
        let minutes = int % 60
        
        return (hours, minutes)
    }
    
    func splitStringIntoArray(string: String) -> [Int] {
        let array = string.components(separatedBy: "-")
        let intArray = array.compactMap { Int($0) }
        
        return intArray
    }
    
    func formatCurrency(_ amount: Double) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencyCode = "GBP"
        
        if let formattedString = formatter.string(from: NSNumber(value: amount)) {
            return formattedString
        } else {
            return "Error formatting currency"
        }
    }
    
    func formatNameToInitials(name: String) -> String {
        let words = name.components(separatedBy: " ")
        let initials = words.compactMap { $0.first }.prefix(2)
        return String(initials)
    }
    
    func getRandomColor() -> Color {
        let red = Double.random(in: 0...1)
        let green = Double.random(in: 0...1)
        let blue = Double.random(in: 0...1)
        
        return Color(red: red, green: green, blue: blue)
    }
    
    func getRandomDate() -> Date {
        let currentDate = Date()
        let threeMonthsInSeconds: TimeInterval = 60 * 60 * 24 * 30 * 3
        
        let randomTimeInterval = TimeInterval.random(in: 0...threeMonthsInSeconds)
        let randomDate = currentDate.addingTimeInterval(randomTimeInterval)
        
        return randomDate
    }
    
    func formatDate(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yy-MM-dd HH:mm"
        
        return dateFormatter.string(from: date)
    }
    
    func getRandomName() -> String {
        let firstNames = ["James", "Robert", "Charles", "David", "Michael", "Richard", "Jack", "Daniel", "Jennifer", "Mary", "Rachel", "Jessica", "Karen", "Lisa", "Rebeca", "Emily"]
        let secondNames = ["Smith", "Jones", "Williams", "Taylor", "Brown", "Davies", "Evans", "Johnson", "Walker", "Hughes", "Lewis", "Roberts", "Tompson", "Edwards", "Hall"]
        
        let randomFirstName = firstNames[Int.random(in: 0..<firstNames.count)]
        let randomSecondName = secondNames[Int.random(in: 0..<secondNames.count)]
        
        return randomFirstName + " " + randomSecondName
    }
    
    func getRandomNumber() -> Double {
        let number = Double.random(in: -450...550)
        
        return number
    }
}
