# README

## Project - Image Filter iPad Application

## Problem:
- Create an iPad application to filter an Image. 
    - Implement filters for Hue, Saturation and Brightness.
    - Ensure the slider's positional indicator doesn't snap to the touch point but instead translates as you move your finger.
    - Bonus feature added: Read the image's average color and set it as background color of the screen.


## Solution Approach:

#### ContentView.swift
- body
    - Set backgroundColor by reading average color of given image. 
    - Load Image, and implement filters on it based on appropriate slider modifications.
    - Implement 3 sliders for Hue, Saturation and Brightness filters that modify image in real time.
        - Slider does not snap on touch and does translate with user movement, as required.
- setAverageColor()
    - Function to read average color from UIImage extension.
- loadImage()
    - Loads Image onto view. Can be modified in the future to take in user input for different images.

#### UIImage+Extension.swift
- UIImage extension to read the CIImage's average color to use as background color in ContentView


## Instructions:

#### Prerequisites
- Have XCode Installed.

#### Run Instructions
- Open Project Folder in XCode.
- Follow Instructions below:
    1. Set Simulator for iPad Pro (12.9-inch) (4th generation) and ensure that Target Device (in Deployment Info) is only checked to iPad.
    2. Build Application: Type `⌘B` or navigate to Product->Build
    3. Run Application: Type `⌘R` or navigate to Product->Run
    4. Enjoy!🎨
    

## Technologies Used
- XCode IDE
- Swift
- SwiftUI Framework
- UIImage Framework extended


## Author

Rabab Fatima - fr.rabab@gmail.com - Github @fatimarabab

