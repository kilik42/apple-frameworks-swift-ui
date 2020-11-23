//
//  FrameworkGridViewModel.swift
//  apple-frameworks
//
//  Created by marvin evins on 11/21/20.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    
    var selectedFramework: Framework?{
        didSet{
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
    
}
