# 📱 UIKit İçinde SwiftUI - Bilgi Kartı Projesi

Bu proje, SwiftUI ve UIKit arasındaki geçişi örnekleyen basit ama öğretici bir yapıdır. `UIHostingController` ile SwiftUI görünümü (`InfoCardView`), bir `UIViewController` (`InfoViewController`) içinde barındırılır. Daha sonra bu UIKit controller, SwiftUI'da `UIViewControllerRepresentable` aracılığıyla tekrar kullanılabilir hale getirilir.

---

## 🧩 Proje Özeti

- SwiftUI görünümü (`InfoCardView`), UIKit `UIViewController` içinde gösterilir.
- `UIViewControllerRepresentable` ile bu UIKit controller, SwiftUI ortamında kullanılır.
- `ContentView` içinde `InfoView` doğrudan çağrılır.
- Amaç: UIKit ile SwiftUI arasında geçişi, uyumu ve entegrasyonu göstermek.

---

## 🖼️ Ekran Görüntüsü




https://github.com/user-attachments/assets/447b2ceb-cf23-4bf6-987d-71f05f7c9a23



---

## 📁 Dosya Yapısı

<img width="527" height="149" alt="1_UIView_BilgiKarti" src="https://github.com/user-attachments/assets/4e2f6307-589b-4af8-9d2d-403e54d113e8" />

---

## 🔧 Kurulum Talimatları

1. Xcode'da yeni bir **SwiftUI App** projesi oluştur.
2. Yukarıdaki dosya yapısına göre yeni dosyaları oluştur.
3. Aşağıdaki kodları ilgili dosyalara yapıştır.
4. `ContentView.swift` içinde uygulama doğrudan başlar, ek yapılandırma gerekmez.

---

## 💡 Kullanılan Yapılar

### InfoCardView.swift

```swift
import SwiftUI

struct InfoCardView: View {
    let message: String

    var body: some View {
        VStack(spacing: 12) {
            Text(message)
                .font(.title)
            Button("Tamam") {
                print("Butona tıklandı")
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
        .padding()
        .background(Color.yellow.opacity(0.2))
        .cornerRadius(12)
    }
}

```

### InfoViewController.swift

```swift

import UIKit
import SwiftUI

class InfoViewController: UIViewController {
    let message: String

    init(message: String) {
        self.message = message
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let swiftUIView = InfoCardView(message: message)
        let hosting = UIHostingController(rootView: swiftUIView)

        addChild(hosting)
        view.addSubview(hosting.view)

        hosting.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            hosting.view.topAnchor.constraint(equalTo: view.topAnchor),
            hosting.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            hosting.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            hosting.view.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])

        hosting.didMove(toParent: self)
    }
}

```

### InfoView.swift

```swift

import SwiftUI

struct InfoView: UIViewControllerRepresentable {
    let message: String

    func makeUIViewController(context: Context) -> InfoViewController {
        InfoViewController(message: message)
    }

    func updateUIViewController(_ uiViewController: InfoViewController, context: Context) {
        // Gerekirse güncelleme yapılabilir
    }
}

```

### ContentView.swift

```swift

import SwiftUI

struct ContentView: View {
    var body: some View {
        InfoView(message: "SwiftUI görünümü UIKit içinde, sonra SwiftUI'da tekrar!")
            .edgesIgnoringSafeArea(.all)
    }
}

```
---

## **📚 Öğrenilecek Konular**

-   SwiftUI → UIKit → SwiftUI geçişi
    
-   UIHostingController kullanımı
    
-   UIViewControllerRepresentable protokolü
    
-   UIKit ve SwiftUI entegrasyonu
    

---

## **✅ Gereksinimler**

-   Xcode 13+
    
-   iOS 14+
    
-   Swift 5.5+




