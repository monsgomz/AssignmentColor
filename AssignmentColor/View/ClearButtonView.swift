//
//  ClearButtonView.swift
//  AssignmentColor
//
//  Created by Montserrat Gomez on 2023-10-13.
//

import SwiftUI

struct ClearButtonView: View {
	
	@Binding var blueSlider: Double
	@Binding var greenSlider: Double
	@Binding var redSlider: Double
	@Binding var opacitySlider: Double
	@Binding var colorHexa: String
	
	var body: some View {
		Button("clear"){
			blueSlider =  0.0
			redSlider = 0.0
			greenSlider = 0.0
			opacitySlider = 255.0
			colorHexa = ""
		}
		.font(.title3)
		.frame(width: 80, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
		.foregroundColor(.white)
		.background(Color.blue)
		.cornerRadius(8)
	}
}
//#Preview {
//    ClearButtonView()
//}
