#if os(iOS)

import SwiftUI

public final class TextView: NSObject, UIViewRepresentable, UITextViewDelegate {
    var text: Binding<String>

    init(text: Binding<String>) {
        self.text = text
    }

    public func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
        textView.layer.borderColor = UIColor.gray.cgColor
        textView.layer.borderWidth = 1
        textView.layer.cornerRadius = 5
        textView.delegate = self
        return textView
    }

    public func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text.wrappedValue
    }
    
    public func textViewDidChange(_ textView: UITextView) {
        self.text.wrappedValue = textView.text
    }
}

#endif
