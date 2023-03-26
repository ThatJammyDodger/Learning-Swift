//
//  CategoryRow.swift
//  Landmarks
//
//  Created by Jay Ambadkar  on 27/03/2023.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var categoryList: [Landmark]
    
    var body: some View {
        VStack (alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView (.horizontal, showsIndicators: false) {
                HStack (alignment: .top, spacing: 0) {
                    ForEach (categoryList) { landmark in
                        NavigationLink {
                            LandmarkDetail(landmark: landmark)
                        } label: {
                            CategoryItem(landmark: landmark)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
        .padding(.top, 10)
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    static var previews: some View {
        CategoryRow(
            categoryName: landmarks[0].category.rawValue,
            categoryList: Array(landmarks.prefix(4))
        )
    }
}
