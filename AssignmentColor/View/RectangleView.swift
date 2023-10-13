//
//  RectangleView.swift
//  AssignmentColor
//
//  Created by Montserrat Gomez on 2023-10-13.
//

import SwiftUI

struct RectangleView: View {
	
	var colorBg: Color
	@Binding var opacity: Double
	
	var body: some View {
		Rectangle()
			.foregroundColor(colorBg)
			.opacity(opacity)
			.frame(width: 300, height: 300)
			.cornerRadius(20)
			.padding()
	}
}

//#Preview {
//	var colorBg: Color
//	var opacity: Double
//	
//	RectangleView(colorBg: colorBg, opacity: opacity)
//}
