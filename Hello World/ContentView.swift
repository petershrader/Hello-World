//
//  ContentView.swift
//  Hello World
//
//  Created by Mobile Apps on 8/26/21.
//
// creating repository

import SwiftUI

struct ContentView: View {
    @State private var color = Color.white
    @State private var number = 0
    @State private var date = Date()
    @State private var celsius = 0.0
    var body: some View {
        VStack {
            Group {
            Text("Hello, world!")
                .padding()
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.blue)
                .frame(width: 100, height: 100, alignment: .center)
            Label ("Square Root", systemImage: "x.squareroot")
                .padding()
            Button(action: {}, label: {
                Text("Click Me")
            })
            Image("C-17")
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
            Link("Barrington High School",
                  destination: URL(string: "https://www.barrington220.org/BHS")!)
            }
            Group {
            ColorPicker("Pick a Color", selection: $color)
                .frame(width: 150, height: 50, alignment: .center)
                DatePicker("Pick a Date", selection: $date)
                    .frame(width: 320, height: 50, alignment: .center)
                HStack {
                Text("Pick a number")
                Picker("", selection: $number) {
                    Text("1").tag(1)
                    Text("2").tag(2)
                    Text("3").tag(3)
                    Text("4").tag(4)
                    Text("5").tag(5)
                }
                .pickerStyle(SegmentedPickerStyle())
                .frame(width: 200, height: 50, alignment: .center)
                .padding()
        }
        Slider(value: $celsius, in: -100...100)
        Text("\(celsius, specifier: "%.1f") Celsius is \(celsius * 9 / 5 + 32, specifier: "%.1f") Fahrenheit")
       }
    }
    .background(color)
    }
}
