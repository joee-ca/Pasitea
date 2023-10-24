//
//  CalmListenView.swift
//  Negroni
//
//  Created by Guillaume Coquard on 17/10/23.
//

import SwiftUI

struct CalmListenView: View {

    @Environment(\.dismiss) var dismiss

    var currentTrackItem: TrackItem

    var body: some View {
        ZStack {
            LightGradientView()
            VStack(spacing: 64) {
                BigButton(image: Image(systemName:"waveform"))
                Text("Listen to this song")
                    .font(.title)
                    .bold()
            }
            VStack {
                CustomBackButton(
                    currentTrackItem: currentTrackItem,
                    dismissAction: dismiss
                )
                Spacer()
            }
        }
        .toolbar(.hidden, for: .tabBar)
        .toolbarBackground(.hidden, for: .tabBar)
    }
}

#if DEBUG
#Preview {
    CalmListenView(
        currentTrackItem: TrackItem()
    )
}
#endif

