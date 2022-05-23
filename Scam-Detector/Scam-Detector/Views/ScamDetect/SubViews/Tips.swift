//
//  Tips.swift
//  Scam-Detector
//
//  Created by phillip chadwick on 2022-05-22.
//

import SwiftUI
import Foundation

struct scamDetect_Tips:View {
    
    @Binding var isTip: Bool
    @Binding var node: tNode
    @Binding var answerIndex: Int
    
    var body: some View {
        
        ZStack {
            scamDetectViewTemplates.buildDoubleStripeView()
            
            VStack {
                
                ZStack (alignment: .leading) {
                    
                    Rectangle()
                        .fill(.white)
                    HStack {
                        
                        // Author: https://www.flaticon.com/authors/good-ware
                        Image("lightbulb")
                            .resizable()
                            .scaledToFit()
                            .frame(width: uSizes.sWidth * 0.15, height: uSizes.sWidth * 0.25, alignment: .center)
                            .padding(.leading, (uSizes.sWidth * 0.85) * 0.3)
                        
                        Text("Tips")
                            .fontWeight(.heavy)
                            .font(.system(size: uSizes.sWidth * 0.07))
                    }
                }
                .frame(width: uSizes.sWidth * 0.85, height: uSizes.sWidth * 0.20, alignment: .center)
                .cornerRadius(10)
                .padding(.bottom, uSizes.sWidth * 0.1)
                
                ZStack() {
                    
                    Rectangle()
                        .fill(.white)
                    
                    Text(node.tip)
                        .font(.system(size: uSizes.sWidth * 0.06))
                }
                .frame(width:  uSizes.sWidth * 0.85, height: uSizes.sHeight * 0.3, alignment: .center)
                .padding(.bottom, uSizes.sWidth * 0.45)
                
                Button("Continue") {
                    node = node.children[answerIndex]
                    isTip = false
                }
                    .frame(width: uSizes.sWidth * 0.85, height: uSizes.sWidth * 0.27, alignment: .center)
                    .background(Color(red: 1 / 255, green: 25 / 255, blue: 54 / 255))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .font(.system(size: uSizes.sWidth * 0.1))
                    
            }
        }
    }
}

