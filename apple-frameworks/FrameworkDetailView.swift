//
//  FrameworkDetailView.swift
//  apple-frameworks
//
//  Created by marvin evins on 11/21/20.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework:Framework
     
    var body: some View {
        VStack{
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                
            } label:{
               AFButton(title: "Learn More")
                }
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework)
    }
}
