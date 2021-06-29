//
//  ValueSelectorsView.swift
//  SwiftUIComponents
//
//  Created by am10 on 2021/06/30.
//

import SwiftUI

struct ValueSelectorsView: View {

    @State private var isOn = false
    @State private var sliderValue = 50.0
    @State private var stepValue = 50.0
    @State private var pickerValue = 1
    @State private var date = Date()
    @State private var color = Color(.systemBlue)

    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Group {
                    HeaderView(text: "Toggle")
                    Toggle("Toggle", isOn: $isOn)

                    HeaderView(text: "Slider")
                    Slider(
                        value: $sliderValue,
                        in: 0...100,
                        onEditingChanged: { editing in
                            print("editing: \(editing), value: \(sliderValue)")
                        }
                    )

                    HeaderView(text: "Stepper")
                    Stepper("Stepper", value: $stepValue, step: 5) { editing in
                        print("editing: \(editing), value: \(stepValue)")
                    }
                }
                Group {
                    HeaderView(text: "Picker")
                    Picker("Value", selection: $pickerValue) {
                        Text("Value1").tag(0)
                        Text("Value2").tag(1)
                        Text("Value3").tag(2)
                    }

                    HeaderView(text: "DatePicker")
                    DatePicker(
                        "Date",
                        selection: $date,
                        displayedComponents: [.date, .hourAndMinute]
                    )

                    HeaderView(text: "ColorPicker")
                    ColorPicker("Color", selection: $color, supportsOpacity: true)
                }
            }
        }.navigationTitle("Value Selectors")
    }
}

struct ValueSelectorsView_Previews: PreviewProvider {
    static var previews: some View {
        ValueSelectorsView()
    }
}
