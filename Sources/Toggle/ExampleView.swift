//
//  ExampleView.swift
//
//
//  Created by Abdel Ali on 06/06/21.
//

import SwiftUI

struct ExampleView: View {
    @State var isAnimating = false
    @State var rotation = Toggle<Angle>(
        on: .init(degrees: -180),
        off: .zero
    )

    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            VStack {
                Button(action: {
                    withAnimation {
                        isAnimating.toggle()
                    }
                }, label: {
                    Text("Animate Me")
                })
                .rotationEffect(rotation.value(state: isAnimating))
            }
        }
    }
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
    }
}
