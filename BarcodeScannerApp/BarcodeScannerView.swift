//
//  ContentView.swift
//  BarcodeScannerApp
//
//  Created by Kitso Namane on 11/09/23.
//

import SwiftUI

struct BarcodeScannerView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScannerView()
                    .frame(maxWidth: .infinity, maxHeight: 300)
                    
                Spacer().frame(height: 30)
                    
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text("Not Yet Scanned")
                    .bold()
                    .font(.largeTitle)
                    .foregroundStyle(.green)
                    .padding()
            }
            .padding()
            .navigationTitle("Barcode Scanner")
        }
    }
}

#Preview {
    BarcodeScannerView()
}
