
import SwiftUI

struct ContentView: View {    
    var body: some View {
        TabView {
            CalculationView(backgroundColor: Color.red, calculation: +)
                .tabItem {
                    Text("item 1")
                }
            CalculationView(backgroundColor: Color.green, calculation: -)
                .tabItem {
                    Text("item 2")
                }
        }
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
