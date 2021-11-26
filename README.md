# LocNaviWebSDK-iOS

LocNaviWebSDK-iOS 是一套基于 iOS 8.0 及以上版本的室内Web地图应用程序开发接口，供开发者在自己的iOS应用中加入室内地图、定位、导航功能。

## 获取AppKey
**appKey mapId targetName targetId 請向richard.chin@locnavi.com 申請**

## 使用CocoaPods部署
在Podfile中使用命令如下：
```bash
pod 'IndoorNavigationIOSWebSDK', '~> 0.0.1'
```
然后运行以下命令

```bash
$ pod install
```
### 注意
导入LocNaviWebSDK后需要
- 在Info.plist中添加授权申明
```bash
	<key>NSBluetoothAlwaysUsageDescription</key>
	<string>室内定位需要使用蓝牙功能</string>
	<key>NSCameraUsageDescription</key>
	<string>AR需要使用摄像头功能</string>
	<key>NSLocationAlwaysAndWhenInUseUsageDescription</key>
	<string>请求在App使用期间使用定位功能</string>
	<key>NSLocationWhenInUseUsageDescription</key>
	<string>请求在App使用期间使用定位功能</string>
	<key>NSMicrophoneUsageDescription</key>
	<string>语音识别需要用到麦克风功能</string>
	<key>NSSpeechRecognitionUsageDescription</key>
	<string>请求在App使用期间使用语音识别功能</string>
  ```
  
## 使用说明
### SDK初始化
  在 didFinishLaunchingWithOptions里面添加以下代码即可，appKey为邮件中获取的
```objective-c
    //初始化SDK
    [LocNaviMapService setAppKey:@"0UbAu9QiDP"];
    //获取到用户信息之后,设置userId即可
    [LocNaviMapService setUserId:@"demo"];
  ```
### 显示医院列表
```objective-c
    LocNaviWebViewController *vc = [[LocNaviWebViewController alloc] initWithMapId:NULL];
    vc.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:vc animated:YES completion:nil];
  ```

### 显示室内地图
```objective-c
    LocNaviWebViewController *vc = [[LocNaviWebViewController alloc] initWithMapId:@"HHrzBwF5dY"];
    vc.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:vc animated:YES completion:nil];
  ```