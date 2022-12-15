
import SwiftUI

struct Tab1View: View {
    @FocusState var isActive: Bool
    @State var redNumber1 = ""
    @State var redNumber2 = ""
    @State var redAnswerNumberLabel = "Label"
    var body: some View {
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
    }
    func plusNumber(number1: String, number2: String) -> String {
        let answerNumber = (Int(number1) ?? 0) + (Int(number2) ?? 0)
        return String(answerNumber)
    }
}

struct Tab1View_Previews: PreviewProvider {
    static var previews: some View {
        Tab1View()
    }
}
