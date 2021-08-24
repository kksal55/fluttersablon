# sablon

A new Flutter project.

## Getting Started

- Yeni bir proje oluştur.
- Burada yer alan lib,assets folderlarını oluşturduğun projeye kopyala
- Google_ads ayarlamalarını yap.
    - Android/manifest odyasını değiştir
            
            
            <meta-data 
            android:name="com.google.android.gms.ads.APPLICATION_ID"
            android:value="ca-app-pub-8786191356169416~7553309902"/>
            
            
    - Ios/Info.plist dosyasını değişir.
        ```
        <key>GADApplicationIdentifier</key>
		<string>ca-app-pub-8786191356169416~7553309902</string>
		<key>SKAdNetworkItems</key>
		<array>
			<dict>
				<key>SKAdNetworkIdentifier</key>
				<string>cstr6suwn9.skadnetwork</string>
			</dict>
		</array>
        ```
- Splash screen için Terminalden ```flutter pub run flutter_native_splash:create``` komutunu çalıştır.
