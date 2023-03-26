//
//  CategoryItem.swift
//  Landmarks
//
//  Created by Jay Ambadkar  on 27/03/2023.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark
    
    var body: some View {
        VStack (alignment: .leading) {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landmark.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        CategoryItem(landmark: landmarks[0])
    }
}
