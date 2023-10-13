//
//  colorFieldView.swift
//  AssignmentColor
//
//  Created by Montserrat Gomez on 2023-10-13.
//

import SwiftUI

struct ColorFieldView: View {
	
	@Binding var colorHexa: String
	
	var body: some View {
		TextField("Write HEX color", text: $colorHexa)
			.textFieldStyle(.roundedBorder)
			.textInputAutocapitalization(.characters)
			.background(
				RoundedRectangle(cornerRadius: 5)
					.fill(Color.white.opacity(0.3)
						 ))
	}
}

//
//#Preview {
//    colorFieldView()
//}
