//
//  LandmarksList.swift
//  Landmarks
//
//  Created by Jay Ambadkar  on 22/03/2023.
//

import SwiftUI

struct LandmarksList: View {
    @State private var showFavouritesOnly: Bool = false
    @EnvironmentObject var modelData: ModelData
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavouritesOnly || landmark.isFavourite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavouritesOnly) {
                    Text("Favourites only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label : {
                        LandmarkRow(landmark: landmark)
                    }
                }
                .navigationTitle("Landmarks")
            }
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        /*ForEach(["iPhone SE (3rd generation)", "iPhone 14 Pro"], id: \.self) { deviceName in
            LandmarksList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }*/
        LandmarksList()
            .environmentObject(ModelData())
    }
}
