//
//  WebView.swift
//  Landmarks
//
//  Created by Emil Atanasov on 01/05/23.
//  Copyright © 2023 Apple. All rights reserved.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    fileprivate var request: URLRequest
    
    init(request: URLRequest) {
        self.request = request
    }
    
    mutating func load(request: URLRequest) {
        self.request = request
    }
  
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.navigationDelegate = context.coordinator
        print("Load ...")
        uiView.load(request)
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, WKNavigationDelegate {
        let parent: WebView
        
        init(_ parent: WebView) {
            self.parent = parent
        }

        func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
            if let host = navigationAction.request.url?.host {
                print("Navigate to host: \(host)")
                // use the following code if you want to deny loading a specific page/domain
                // decisionHandler(.cancel)
            }
            decisionHandler(.allow)
        }
        
    }
    
}
