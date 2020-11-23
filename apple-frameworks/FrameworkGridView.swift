//
//  FrameworkGridView.swift
//  apple-frameworks
//
//  Created by marvin evins on 11/21/20.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let columns: [GridItem] =  [GridItem(.flexible()), GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    
    var body: some View {
        
        NavigationView {
            
                ScrollView {
                    LazyVGrid(columns:columns){
                    ForEach(MockData.frameworks, id: \.id){
                        framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
     
                }
                }.navigationTitle("😃 Frameworks")
                .sheet(isPresented: $viewModel.isShowingDetailView, content: {
                    FrameworkDetailView(framework: viewModel.selectedFramework!)
                })
                
             
        }
        
       
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}


struct FrameworkTitleView: View {
    let framework: Framework
    
    var body: some View{
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width:90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
    
}
