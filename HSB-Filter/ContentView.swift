//
//  ContentView.swift
//  HSB-Filter
//
//  Created by Rabab Fatima on 7/24/20.
//  Copyright © 2020 Rabab Fatima. All rights reserved.
//

import CoreImage
import CoreImage.CIFilterBuiltins
import SwiftUI

struct ContentView: View {
    @State private var image: Image?
    
    //Slider Input for HSB filters
    @State private var hueValue: Double = 0
    @State private var saturationValue: Double = 0
    @State private var brightnessValue: Double = 0
    
    //Using this var to read average color of image and set as background 
    @State private var backgroundColor: Color = .clear
    
    
    var body: some View {
        //Overlapping backgroundColor with other elements on screen
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            VStack(alignment: .center) {
                
                Text("Hue, Saturation, Brightness")
                    .foregroundColor(.white)
                image?
                    .resizable()
                    .scaledToFit()
                    .padding(.bottom)
                    .hueRotation(.degrees(0 + hueValue))//Converting hue slider value to degrees mathematically
                    .saturation(1.0 + (saturationValue/10))
                    .brightness(0.01 + (brightnessValue/100))
                VStack {
                    HStack {
                        Slider(value: $hueValue, in: -50...50, step: 1)
                            .frame(width: 500)
                            .accentColor(.purple)
                            .colorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
                            .colorMultiply(.purple)
                        Text("Hue            ")
                            .foregroundColor(Color.white)
                            .padding(.leading)
                            
                    }
                    HStack {
                        Slider(value: $saturationValue, in: -50...50, step: 1)
                            .frame(width: 500)
                            .accentColor(.red)
                            .colorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
                            .colorMultiply(.red)
                        Text("Saturation")
                            .foregroundColor(Color.white)
                            .padding(.leading)
                    }
                    HStack {
                        Slider(value: $brightnessValue, in: -50...50, step: 1)
                            .frame(width: 500)
                            .accentColor(.white)
                            .colorMultiply(.white)
                            .colorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
                        Text("Brightness")
                            .foregroundColor(Color.white)
                            .padding(.leading)
                    }
                }
                
            }
            .background(Color.black.opacity(0.5))
            .onAppear() {
                self.loadImage()
                self.setAverageColor()
            }
        }
    }
    
    //Function to read average color from UIImage extension
    private func setAverageColor() {
        let uiColor = UIImage(named: "artwork")?.averageColor ?? .clear
        backgroundColor = Color(uiColor) //set background color as avg color of image
    }
    
    func loadImage() { //This method can be modified to get user input for image
        image = Image("artwork")
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
