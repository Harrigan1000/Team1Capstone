//
//  FrameworkGridViewModel.swift
//  Team1Capstone
//
//  Created by Bernard Harrigan on 4/25/21.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    
    
    @Published var isShowingDetailView = false
}
