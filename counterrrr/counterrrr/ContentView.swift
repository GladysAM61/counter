//
//  ContentView.swift
//  counterrrr
//
//  Created by StudentAM on 2/26/24.
//

import SwiftUI

struct ContentView: View {
//    creating a variable called count
//    made it state because it is going to appear in the app
    @State private var count : Int = 0

    var body: some View {
      
        VStack {
//           creating a text telling the user what the buttons do
            Text("Click buttons below to change the counter")
//printing the count variable
            Text("\(count)")
//            added padding to the count text
                .padding()
//            creating buttons and making it appear horizontal
            HStack{
//                creating the increment button
                Button("Increment",action: Increment)
//                created padding
                    .padding()
//                made the background color blue
                    .background(Color.blue)
//                made the text color white
                    .foregroundColor(.white)
//                made the border radius 10
                    .cornerRadius(10)
//                button for the decrement
                Button("Decrement",action: Decrement)
//                created padding
                        .padding()
//                made the background color blue
                        .background(Color.blue)
//                made the text color white
                            .foregroundColor(.white)
//                made the border radius 10
                    .cornerRadius(10)
            }
        }
        .padding()
    }
//    created a function to increment the count
    func Increment(){
//        adding one to the count
        count += 1
    }
    //    created a function to decrement the count
    func Decrement(){
//        subtract one from the count
        count -= 1
//        if statement to not get negative numbers
//        if the count variable reaches -1, add one to it to keep it at zero and not becoming a negative number
        if count == -1{
             count += 1
        }
    }
}

#Preview {
    ContentView()
}

