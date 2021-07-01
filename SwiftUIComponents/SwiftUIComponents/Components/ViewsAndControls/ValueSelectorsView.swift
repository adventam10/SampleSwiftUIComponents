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
    @State private var pickerMenuValue = 1
    @State private var date = Date()
    @State private var color = Color(.systemBlue)

    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Group {
                    HeaderView(text: "Toggle")
                    SubHeaderView(text: "Default")
                    Toggle("Toggle", isOn: $isOn)
                        .toggleStyle(DefaultToggleStyle())
                    SubHeaderView(text: "Switch")
                    Toggle("Toggle", isOn: $isOn)
                        .toggleStyle(SwitchToggleStyle())
                    // ButtonToggleStyle（iOS15以上）
                    // CheckboxToggleStyle（macOS用）
                }
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
                Group {
                    Group {
                        HeaderView(text: "Picker")
                        SubHeaderView(text: "Default")
                        Picker("Default", selection: $pickerValue) {
                            Text("Value1").tag(0)
                            Text("Value2").tag(1)
                            Text("Value3").tag(2)
                        }.pickerStyle(DefaultPickerStyle())
                    }
                    SubHeaderView(text: "Inline")
                    Picker("Inline", selection: $pickerValue) {
                        Text("Value1").tag(0)
                        Text("Value2").tag(1)
                        Text("Value3").tag(2)
                    }.pickerStyle(InlinePickerStyle())
                    SubHeaderView(text: "Segmented")
                    Picker("Segmented", selection: $pickerValue) {
                        Text("Value1").tag(0)
                        Text("Value2").tag(1)
                        Text("Value3").tag(2)
                    }.pickerStyle(SegmentedPickerStyle())
                    SubHeaderView(text: "Menu")
                    Picker("Menu", selection: $pickerValue) {
                        Text("Value1").tag(0)
                        Text("Value2").tag(1)
                        Text("Value3").tag(2)
                    }.pickerStyle(MenuPickerStyle())
                    SubHeaderView(text: "Wheel")
                    Picker("Wheel", selection: $pickerValue) {
                        Text("Value1").tag(0)
                        Text("Value2").tag(1)
                        Text("Value3").tag(2)
                    }.pickerStyle(WheelPickerStyle())
                    // RadioGroupPickerStyle（macOS用）
                }
                Group {
                    HeaderView(text: "DatePicker")
                    SubHeaderView(text: "Default")
                    DatePicker(
                        "Default",
                        selection: $date,
                        displayedComponents: [.date, .hourAndMinute]
                    ).datePickerStyle(DefaultDatePickerStyle())
                    SubHeaderView(text: "Compact")
                    DatePicker(
                        "Compact",
                        selection: $date,
                        displayedComponents: [.date, .hourAndMinute]
                    ).datePickerStyle(CompactDatePickerStyle())
                    SubHeaderView(text: "Graphical")
                    DatePicker(
                        "Graphical",
                        selection: $date,
                        displayedComponents: [.date, .hourAndMinute]
                    ).datePickerStyle(GraphicalDatePickerStyle())
                    SubHeaderView(text: "Wheel")
                    DatePicker(
                        "Wheel",
                        selection: $date,
                        displayedComponents: [.date, .hourAndMinute]
                    ).datePickerStyle(WheelDatePickerStyle())
                    // FieldDatePickerStyle（macOS用）
                    // StepperFieldDatePickerStyle（macOS用）
                }
                Group {
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
