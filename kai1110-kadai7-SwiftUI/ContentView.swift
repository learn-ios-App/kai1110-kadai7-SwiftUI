
import SwiftUI

struct ContentView: View {    
    var body: some View {
        TabView {
            Tab1View()
                .tabItem {
                    Text("item 1")
                }
            Tab2View()
                .tabItem {
                    Text("item 2")
                }
        }
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
