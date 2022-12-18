
import SwiftUI

struct ContentView: View {    
    var body: some View {
        TabView {
            CalclationView(backgroundColor: Color.red, calclation: +)
                .tabItem {
                    Text("item 1")
                }
            CalclationView(backgroundColor: Color.green, calclation: -)
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
