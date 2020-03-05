import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:flutter/material.dart';
import 'package:halisi/SplashScreen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Halisi',
      theme:
          ThemeData(primarySwatch: Colors.blue, accentColor: Colors.blueAccent),
      home: SplashPage(),
    );
  }
}
// SplashPage()


class FacebookAds extends StatefulWidget {
  @override
  _FacebookAdsState createState() => _FacebookAdsState();
}

class _FacebookAdsState extends State<FacebookAds> {
  bool _isInterstitialAdLoaded = false;
  bool _isRewardedAdLoaded =false;
  
  Widget _currentAd=SizedBox(
    height: 0.0,
    width: 0.0,
  );
  @override
  
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
  
void _loadInterstitialAd(){
  FacebookInterstitialAd.loadInterstitialAd(
  placementId: '539689593325231_539690559991801',
  listener: (result,value){
    print('interstitialad:$result-->$value');
    if(result== InterstitialAdResult.LOADED){
      _isInterstitialAdLoaded =true;
    }
    if(result ==InterstitialAdResult.DISMISSED && value ['invalidated'] ==true){
      _isInterstitialAdLoaded = false;
      _loadInterstitialAd();
    }
  }
  );
}
_showInterstitialAd(){
  if( _isInterstitialAdLoaded ==true){
    FacebookInterstitialAd.showInterstitialAd();
  }
}
}
