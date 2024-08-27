//
//  DissmissButton.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Prashanti Venna on 06/08/2024.
//

import SwiftUI

struct DissmissButton: View {
    @Binding var isShowingDetailView: Bool
    var body: some View {
        HStack {
            Spacer()
            Button {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }.padding()
    }
}

#Preview {
    DissmissButton(isShowingDetailView: .constant(false))
}
