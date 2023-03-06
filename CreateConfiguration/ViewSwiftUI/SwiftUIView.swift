//
//  SwiftUIView.swift
//  CreateConfiguration
//
//  Created by Tao Quynh on 3/6/23.
//

import SwiftUI

struct SwiftUIView: View {
    var dismissAction: (() -> Void)?
    
    var body: some View {
        VStack {
            HStack {
                Text("SwiftUI Screen")
                    .bold()
                    .font(.system(size: 21.0))
            }
            Spacer()
                .frame(width: 1, height: 74, alignment: .bottom)
            VStack(alignment: .center){
                Button(action: {
                    dismissAction?()
                }) {
                    Text("Navigate to UIKit Screen")
                        .font(.system(size: 21.0))
                        .bold()
                        .frame(width: UIScreen.main.bounds.width, height: 10, alignment: .center)
                }
            }
            Spacer()
                .frame(width: 2, height: 105, alignment: .bottom)
        }.navigationBarHidden(true)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
