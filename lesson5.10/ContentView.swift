//
//  ContentView.swift
//  lesson5.10
//
//  Created by Javlonbek on 29/01/22.
//

import SwiftUI

extension UIScreen{
    static let width = UIScreen.main.bounds.size.width
    static let height = UIScreen.main.bounds.size.height
}

struct ContentView: View {
    @State private var str = ""
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.red, .yellow]), startPoint: .bottom, endPoint: .top)
            
            VStack{
                HStack{
                    Image(systemName: "person")
                        .foregroundColor(.white)
                    TextField("Enter your email", text: $str)
                        .font(.system(size: 15))
                }
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 15).stroke(.white, lineWidth: 1))
            
                HStack{
                    Image(systemName: "lock")
                        .foregroundColor(.white)
                    SecureField("Enter your password", text: $str)
                        .font(.system(size: 15))
                }
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 15).stroke(.white, lineWidth: 1))
                
                HStack{
                    Button {
                    } label: {
                        Text("Login")
                            .foregroundColor(.white)
                            .font(.system(size: 15))
                    }
                }
                .frame(maxWidth: .infinity)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 15).stroke(.white, lineWidth: 1))

            }
            .padding()
            
        }
        .ignoresSafeArea()
        .safeAreaInset(edge: .bottom) {
                Text("All rights reversed")
                    .foregroundColor(.white)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
