/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing the details for a landmark.
*/

import SwiftUI

extension String {
    var toQuery: String {
        return self.replacingOccurrences(of: " ", with: "+", options: .literal, range: nil)
    }
}

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    @State var showMoreInfo = false

    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }

    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }

                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
                Button("More info") {
                    showMoreInfo.toggle()
                }
                .padding()
            }
            .sheet(isPresented: $showMoreInfo,
                           onDismiss: didDismiss) {
                        VStack {
                            HStack {
                                Spacer()
                                Button("Dismiss",
                                       action: { showMoreInfo.toggle() })
                                .padding()
                            }
                            WebView(request: URLRequest(url: URL(string: googleUrl)!))
                           
                        }
                    }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
    
    func didDismiss() {
        // Handle the dismissing action.
    }
    
    var googleUrl: String {
        return "https://google.com/search?q=" + landmark.name.toQuery
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()

    static var previews: some View {
        LandmarkDetail(landmark: modelData.landmarks[0])
            .environmentObject(modelData)
    }
}
