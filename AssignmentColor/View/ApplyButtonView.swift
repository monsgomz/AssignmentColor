//
//  ButtonApplyView.swift
//  AssignmentColor
//
//  Created by Montserrat Gomez on 2023-10-13.
//

import SwiftUI

struct ApplyButtonView: View {
	
	var colorHx: String
	@Binding var blueSlider: Double
	@Binding var greenSlider: Double
	@Binding var redSlider: Double
	@Binding var opacitySlider: Double
	
	
	var body: some View {
		
		let (redF, greenF, blueF, alphaF) = getRGBAColor(rgba: colorHx)
		
		let charactersValid: [Character] = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F"]
		
		Button("Apply") {
			if(colorHx.count > 0 && colorHx.count < 9){
				blueSlider = Double(blueF)
				redSlider = Double(redF)
				greenSlider = Double(greenF)
				opacitySlider = Double(alphaF)
				
				let colorBackground = Color(
					red: Double(redF)/255.0,
					green: Double(greenF)/255.0,
					blue: Double(blueF)/255.0,
					opacity: Double(alphaF) / 255.0)
			}
			
		}
		.disabled(!(colorHx.count == 3 || colorHx.count == 4 || colorHx.count == 6 || colorHx.count == 8) || colorHx.allSatisfy { character in
			!charactersValid.contains(character)
		})
	}
}
