
import SwiftUI

struct Tab2View: View {
    @FocusState var isActive: Bool
    @State var greenNumber1 = ""
    @State var greenNumber2 = ""
    @State var greenAnswerNumberLabel = "Label"
    var body: some View {
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
    }
    func minusNumber(number1: String, number2: String) -> String {
        let answerNumber = (Int(number1) ?? 0) - (Int(number2) ?? 0)
        return String(answerNumber)
        
    }
}

struct Tab2View_Previews: PreviewProvider {
    static var previews: some View {
        Tab2View()
    }
}
