//
//  ContentView.swift
//  AssignmentColor
//
//  Created by Montserrat Gomez on 2023-10-10.
//

import SwiftUI

struct ContentView: View {
	
	@State var blueSlider = 0.0
	@State var greenSlider = 0.0
	@State var redSlider = 0.0
	@State var opacitySlider = 255.0
	@State var colorHexa = ""
	
	var body: some View {
		
		let colorBackground = Color( red: redSlider/255, green: greenSlider/255, blue: blueSlider/255, opacity: opacitySlider/255)
		
		VStack{
			
			VStack{
				Spacer()
			}
			.frame(width: 500, height: 380, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
			.ignoresSafeArea()
			.background(colorBackground)
			
			VStack{
				
				HStack{
					
					ColorFieldView(colorHexa: $colorHexa)
					
					Text(String(format: "#%02X", Int(round(redSlider))) + String(format: "%02X", Int(round(greenSlider))) + String(format: "%02X", Int(round(blueSlider))) + String(format: "%02X", Int(round(opacitySlider))))
					
					ApplyButtonView(colorHx: colorHexa, blueSlider: $blueSlider, greenSlider: $greenSlider, redSlider: $redSlider, opacitySlider: $opacitySlider)
				}
				
				SliderView(colorSlider: $blueSlider, txt: "Blue ", fColor: .blue)
				SliderView(colorSlider: $redSlider, txt: "Red ", fColor: .red)
				SliderView(colorSlider: $greenSlider, txt: "Green ", fColor: .green)
				OpacityView(opacitySlider: $opacitySlider)
				
				ClearButtonView(blueSlider: $blueSlider, greenSlider: $greenSlider, redSlider: $redSlider, opacitySlider: $opacitySlider, colorHexa: $colorHexa)
				
			}
			.frame( width: 340,height: 400)
			.cornerRadius(10)
			.background(Color.white)
			.padding()
		}
		
	}
}

#Preview {
	ContentView()
}



