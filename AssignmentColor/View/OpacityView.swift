//
//  OpacityView.swift
//  AssignmentColor
//
//  Created by Montserrat Gomez on 2023-10-13.
//

import SwiftUI

struct OpacityView: View {
	
	@Binding var opacitySlider: Double
	
	var body: some View {
		Slider(value: $opacitySlider , in: 0 ... 255,
			   label: { Text("txt")},
			   minimumValueLabel: {Text("0")},
			   maximumValueLabel: { Text("255") }
		)
		.tint(.black)
		Text("Opacity: \(String(format: "%.0f", opacitySlider))")
			.padding()
		
	}
}
//#Preview {
//    OpacityView()
//}
