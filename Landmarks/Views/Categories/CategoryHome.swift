//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Jay Ambadkar  on 26/03/2023.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView() {
            List {
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                    .cornerRadius(5)
                
                ForEach (modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, categoryList: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            
            .navigationTitle("Featured")
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
