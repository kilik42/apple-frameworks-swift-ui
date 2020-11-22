//
//  AFButton.swift
//  apple-frameworks
//
//  Created by marvin evins on 11/21/20.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width:200, height:50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(title: "Test Title")
    }
}
