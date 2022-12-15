
import SwiftUI

struct ContentView: View {
    @State var redNumber1 = ""
    @State var redNumber2 = ""
    @State var redAnswerNumberLabel = "Label"
    
    @State var greenNumber1 = ""
    @State var greenNumber2 = ""
    @State var greenAnswerNumberLabel = "Label"
    @FocusState var isActive: Bool
    
    var body: some View {
        TabView {
            //Tab1
            ZStack {
                Color.red
                VStack(spacing: 30) {
                    TextFieldView(number: $redNumber1)
                    TextFieldView(number: $redNumber2)
                    Button(action: {
                        redAnswerNumberLabel = plusNumber(number1: redNumber1, number2: redNumber2)
                        isActive = false
                    }) {
                        Text("Button")
                    }
                    Text("\(redAnswerNumberLabel)")
                }
                .focused($isActive)
            }
                .tabItem {
                    Text("item 1")
                }
            
            //Tab2
            ZStack {
                Color.green
                VStack(spacing: 30) {
                    TextFieldView(number: $greenNumber1)
                    TextFieldView(number: $greenNumber2)
                    Button(action: {
                        greenAnswerNumberLabel = minusNumber(number1: greenNumber1, number2: greenNumber2)
                        isActive = false
                    }) {
                        Text("Button")
                    }
                    Text("\(greenAnswerNumberLabel)")
                }
                .focused($isActive)
            }
                .tabItem {
                    Text("item 2")
                }
        }
    }
    func plusNumber(number1: String, number2: String) -> String {
        let answerNumber = (Int(number1) ?? 0) + (Int(number2) ?? 0)
        return String(answerNumber)
    }
    
    func minusNumber(number1: String, number2: String) -> String {
        let answerNumber = (Int(number1) ?? 0) - (Int(number2) ?? 0)
        return String(answerNumber)
        
    }
}
struct TextFieldView: View {
    @Binding var number: String
    
    var body: some View {
        TextField("", text: $number)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .keyboardType(.numberPad)
            .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
