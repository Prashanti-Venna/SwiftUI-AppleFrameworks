//
//  ContentView.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Prashanti Venna on 05/08/2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }.navigationTitle("Apple Frameworks")
                .sheet(isPresented: $viewModel.isShowingDetailView) {
                    FrameworkDetailView(framework: viewModel.selectedFramework ??                                           MockData.sampleFramework,
                                        isShowingDetailView: $viewModel.isShowingDetailView)
                }
        }
    }
}

#Preview {
    ContentView()
}

