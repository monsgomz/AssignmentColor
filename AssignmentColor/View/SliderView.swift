//
//  SliderView.swift
//  AssignmentColor
//
//  Created by Montserrat Gomez on 2023-10-13.
//

import SwiftUI

struct SliderView: View {
	
	@Binding var colorSlider: Double
	var txt: String
	var fColor: Color
	
	var body: some View {
		Slider(value: $colorSlider , in: 0 ... 255,
			   label: { Text("txt")},
			   minimumValueLabel: {Text("0")},
			   maximumValueLabel: { Text("255") }
		)
		.tint(fColor)
		
		Text("\(txt): \(String(format: "%.0f", colorSlider))").foregroundColor(fColor)
		
	}
}

//#Preview {
//    SliderView()
//}
