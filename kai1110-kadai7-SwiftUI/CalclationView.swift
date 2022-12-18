//
//  CalclationView.swift
//  kai1110-kadai7-SwiftUI
//
//  Created by 渡邊魁優 on 2022/12/18.
//

import SwiftUI

struct CalclationView: View {
    @FocusState var isActive: Bool
    @State var number1 = ""
    @State var number2 = ""
    @State var answerNumberLabel = "Label"
    
    let backgroundColor: Color
    let calclation: (Int, Int) -> Int
    
    var body: some View {
        ZStack {
            backgroundColor
            VStack(spacing: 30) {
                TextFieldView(number: $number1)
                TextFieldView(number: $number2)
                Button(action: {
                    answerNumberLabel = plusNumber(number1: number1, number2: number2)
                    isActive = false
                }) {
                    Text("Button")
                }
                Text("\(answerNumberLabel)")
            }
            .focused($isActive)
        }
    }
    func plusNumber(number1: String, number2: String) -> String {
        let answerNumber = calclation(Int(number1) ?? 0, Int(number2) ?? 0)
        return String(answerNumber)
    }
}

struct CalclationView_Previews: PreviewProvider {
    static var previews: some View {
        CalclationView(
            backgroundColor: Color.red, calclation: +
        )
    }
}
