# Flutter Başlangıç Klavuzu

Yeni bir fllutter projesine başlarken hazır olarak bazı kütüphaneleri barındırır. 
Barındırdığı hazır yapılar:
- Lokalizasyon (Getx)
- Provider (Getx)
- Splash screen
- Hamburger menü
- Bottom bar
- Admanager ve Admob ayarları ve eklemeleri
- Sharedpreferences (Getx)
- Tema 
- Sqlite helper

## Getting Started

- Yeni bir proje oluştur.
- Burada yer alan lib,assets folderlarını oluşturduğun projeye kopyala
- Projede replace yaparak ```sablond``` kelimesini belirlemiş olduğun proje adı ile değiştir.
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
- Build.gradle dosyasında minSDK 21 olarak güncelle.

- pod.file dosyasını güncelle

		post_install do |installer|
	  installer.pods_project.targets.each do |target|
	  flutter_additional_ios_build_settings(target)
		end
		installer.pods_project.targets.each do |target|
		 target.build_configurations.each do |config|
		  config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '9.0'
		 end
		end
		end
