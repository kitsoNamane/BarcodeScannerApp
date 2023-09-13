//
//  ContentView.swift
//  BarcodeScannerApp
//
//  Created by Kitso Namane on 11/09/23.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    @State private var scannedCode: String = ""
    @State private var isShowingAlert: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $scannedCode)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                    
                Spacer().frame(height: 30)
                    
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text(scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode)
                    .bold()
                    .font(.largeTitle)
                    .foregroundStyle(scannedCode.isEmpty ? .red : .green)
                    .padding()
                Button {
                    isShowingAlert = true
                } label: {
                    Text("Tap Me")
                }
            }
            .padding()
            .navigationTitle("Barcode Scanner")
            .alert(isPresented: $isShowingAlert, content: {
                Alert(title: Text("Test"), message: Text("This is a test"), dismissButton: .default(Text("Ok")))
            })
        }
    }
}

#Preview {
    BarcodeScannerView()
}
