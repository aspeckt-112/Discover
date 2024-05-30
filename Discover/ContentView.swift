//
//  ContentView.swift
//  Discover
//
//  Created by Russell Garrett on 30/05/2024.
//

import MapKit
import SwiftUI

struct Place: Identifiable {
  var id = UUID()
  var title: String
  var coordinates: CLLocationCoordinate2D
  var architect: String
}

struct ContentView: View {
  var body: some View {
    Map(coordinateRegion: $region, annotationItems: annotations) {
      MapMarker(coordinate: $0.coordinates)
    }
    .padding()
  }

  @State private var region = MKCoordinateRegion(
    center: CLLocationCoordinate2D(latitude: 41.9028, longitude: 12.4964),
    span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))

  let annotations = [
    Place(
      title: "Fontana di Trevi",
      coordinates: CLLocationCoordinate2D(latitude: 41.900833, longitude: 12.483056),
      architect: "Nicola Salvi"),
    Place(
      title: "Pantheon", coordinates: CLLocationCoordinate2D(latitude: 41.8986, longitude: 12.4768),
      architect: "Marcus Agrippa"),
    Place(
      title: "Villa Medici",
      coordinates: CLLocationCoordinate2D(latitude: 41.908, longitude: 12.483),
      architect: "Bartolomeo Ammanati"),
    Place(
      title: "Colosseo",
      coordinates: CLLocationCoordinate2D(
        latitude: 41.890278, longitude: 12.492222
      ), architect: "Flavian Emperors"),

  ]
}

#Preview {
  ContentView()
}
