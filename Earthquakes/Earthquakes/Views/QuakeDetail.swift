//
//  QuakeDetail.swift
//  Earthquakes
//
//  Created by Joy Banerjee on 11/04/24.
//

import SwiftUI

struct QuakeDetail: View {
    var quake: Quake
    var body: some View {
        VStack {
            Text(quake.place)
                .font(.title3)
            .bold()
            Text("\(quake.time.formatted())")
                .foregroundStyle(Color.secondary)
            
            if let location = quake.location {
                Text("Latitude: \(location.latitude)")
                Text("Longitude: \(location.longitude)")
            }
        }
    }
}

struct QuakeDetail_Previews: PreviewProvider {
    static var previews: some View {
        QuakeDetail(quake: Quake.preview)
    }
}
