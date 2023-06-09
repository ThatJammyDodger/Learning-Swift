//
//  CircleImage.swift
//  Landmarks
//
//  Created by Jay Ambadkar  on 21/03/2023.
//

import SwiftUI

struct CircleImage: View {
    var img: Image
    var body: some View {
        img
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(img: ModelData().landmarks[0].image)
    }
}
