//
//  TextViews.swift
//  SwiftUIFundamentals
//
//  Created by My3 Shenoy on 12/4/21.
//

import SwiftUI

struct InstructionText: View {
    let text: String
    var body: some View {
        Text(text.uppercased())
            .foregroundColor(Color("TextColor")) // Asset Catalog
            .kerning(2.0)
            .bold()
            .multilineTextAlignment(.center)
            .lineSpacing(4)
            .font(.footnote)
    }
}

struct BigNumberText: View {
    let text: String
    var body: some View {
        Text(text)
            .bold()
            .kerning(-1)
            .fontWeight(.black)
            .font(.largeTitle)
    }
}

struct SliderLabelText: View {
    let text: String
    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor")) // Asset Catalog
            .fontWeight(.black)
    }
}

struct ButtonText: View {
    var text: String
    var body: some View {
        // Bold the text, not the button
        Text(text.uppercased())
            .bold()
            .font(.title)
    }
}

struct LabelText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .kerning(-1)
            .fontWeight(.black)
            .font(.title)
            .frame(width: 80, height: Constants.General.roundedViewLength)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .strokeBorder(Color("ButtonStrokeColor"), lineWidth: Constants.General.strokeWidth)
            )
    }
}

struct AlertBodyText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.subheadline)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .lineSpacing(12.0)
    }
}

struct AlertButtonText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .padding()
            // Take as much space as possible
            .frame(maxWidth: .infinity)
            .background(
                Color("AccentColor")
            )
            .foregroundColor(.white)
            .cornerRadius(12.0)
    }
}

struct ScoreText: View {
    var score: Int
    
    var body: some View {
        // Bold the text, not the button
        Text(String(score))
            .bold()
            .kerning(-0.2)
            .font(.title3)
            .foregroundColor(Color("TextColor"))
            
    }
}

struct DateText: View {
    var date: Date
    
    var body: some View {
        // Bold the text, not the button
        Text(date, style: .time)
            .bold()
            .kerning(-0.2)
            .font(.title3)
            .foregroundColor(Color("TextColor"))
    }
}

struct BigBoldText: View {
    let text: String
    
    var body: some View {
        Text(text.uppercased())
            .kerning(2.0)
            .foregroundColor(Color("TextColor"))
            .font(.title)
            .fontWeight(.black)
        
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionText(text: "Instructions")
            BigNumberText(text: "999")
            SliderLabelText(text: "99")
            ButtonText(text: "Button Text")
            LabelText(text: "999")
            AlertBodyText(text: "You scored 200 pts")
            AlertButtonText(text: "Start new round")
            ScoreText(score: 450)
            DateText(date: Date())
            BigBoldText(text: "Test")
        }
        .padding()
    }
}
