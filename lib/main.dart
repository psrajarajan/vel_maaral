import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:in_app_update/in_app_update.dart';
import 'package:vel_maaral/custom_button.dart';
import 'package:vel_maaral/parayanam.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) {
    runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
  });
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> with TickerProviderStateMixin {
  final AudioPlayer _kPlayer = AudioPlayer();
  bool _kStarted = false;
  bool _sachchithananda = false;
  BannerAd? _bannerAd;
  bool _isAdLoaded = false;

  late AnimationController _velController;
  late Animation<double> _velAnimation;

  void checkForUpdate() async {
    AppUpdateInfo updateInfo = await InAppUpdate.checkForUpdate();
    if (updateInfo.updateAvailability == UpdateAvailability.updateAvailable) {
      InAppUpdate.performImmediateUpdate();
    }
  }

  _kanthanKarunai() async {
    setState(() {
      _kStarted = true;
    });

    await _kPlayer.play(AssetSource('music/vetrivel_kanthankarunai.mp3'));
    await Future.delayed(const Duration(seconds: 12), () {
      setState(() {
        _kPlayer.stop();
        _kStarted = false;
      });
    });
  }

  void _thiruppugazhSwamy() {
    if (_sachchithananda == false) {
      Future.delayed(const Duration(seconds: 3), () {
        setState(() {
          _sachchithananda = true;
        });
      });
    }
  }

  void _loadBannerAd() {
    _bannerAd = BannerAd(
      adUnitId: 'ca-app-pub-7346088169082906/7347306276',
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (Ad ad) {
          setState(() {
            _isAdLoaded = true;
          });
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          ad.dispose();
        },
      ),
    )..load();
  }

  Route _createRoute() {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) => const Magic(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var offsetAnimation =
            Tween<Offset>(begin: const Offset(1.0, 0.0), end: Offset.zero)
                .animate(animation);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }

  @override
  void initState() {
    checkForUpdate();
    _loadBannerAd();
    _velController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
    _velAnimation =
        Tween<double>(begin: 0.0, end: 2 * pi).animate(_velController);
    _thiruppugazhSwamy();
    super.initState();
  }

  @override
  void dispose() {
    _velController.dispose();
    _kPlayer.dispose();
    _bannerAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: MediaQuery.of(context).size,
      minTextAdapt: true,
      builder: (BuildContext context, child) => MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color(0xFFFFFFE0),
          appBar: AppBar(
            title: Text(
              'திருத்தணி  முருகர்  துணை',
              style: TextStyle(
                fontFamily: 'meera',
                fontSize: 16.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
              ),
            ),
            toolbarHeight: 70,
            centerTitle: true,
            backgroundColor: const Color.fromARGB(255, 22, 0, 128),
            actionsIconTheme: const IconThemeData(
              size: 40.0,
              color: Colors.white,
            ),
            automaticallyImplyLeading: false,
            elevation: 4.0,
          ),
          body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              SizedBox(height: 0.02.sh),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Column(
                  children: [
                    Visibility(
                      visible: _sachchithananda,
                      child: SizedBox(
                        width: 0.35.sw,
                        height: 0.20.sh,
                        child: Text(
                          'மகான்\nஞான சித்தர்\nஅருணகிரிநாதர்\nஅருளிய\nவேல் வகுப்பு',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'kavivanar',
                            fontSize: 11.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.brown,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    AnimatedBuilder(
                      animation: _velAnimation,
                      builder: (context, child) {
                        return Transform(
                          transform: Matrix4.rotationY(_velAnimation.value),
                          alignment: Alignment.center,
                          child: child,
                        );
                      },
                      child: GestureDetector(
                        onTap: _kStarted
                            ? null
                            : () {
                                _kanthanKarunai();
                              },
                        child: SizedBox(
                          width: 0.25.sw,
                          height: 0.18.sh,
                          child: const Image(
                            image: AssetImage("assets/images/vetri_vel.webp"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                        onTap: _kStarted
                            ? null
                            : () {
                                _kanthanKarunai();
                              },
                        child: Icon(
                          Icons.volume_up_rounded,
                          color: Colors.grey.shade400,
                          size: 30.0,
                        )),
                  ],
                ),
                Visibility(
                  visible: _sachchithananda,
                  child: SizedBox(
                    width: 0.35.sw,
                    height: 0.20.sh,
                    child: Text(
                      'வள்ளிமலை\nஸ்ரீலஸ்ரீ\nசச்சிதானந்த\nசுவாமிகள்\nதொகுத்தளித்த',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'kavivanar',
                        fontSize: 11.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
              ]),
              InteractiveViewer(
                minScale: 1.0,
                maxScale: 3.0,
                child: SizedBox(
                  child: Image.asset(
                    'assets/images/vel_maaral_geogebra.webp',
                    width: 0.80.sw,
                    height: 0.50.sw,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Visibility(
                visible: _sachchithananda,
                child: Text(
                  'வேல் மாறல் ',
                  style: TextStyle(
                    fontSize: 32.sp,
                    fontFamily: 'meera',
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..shader = const LinearGradient(
                        colors: [Colors.blue, Colors.purple, Colors.red],
                      ).createShader(
                          const Rect.fromLTWH(0.0, 0.0, 120.0, 50.0)),
                    shadows: const [
                      Shadow(
                        offset:
                            Offset(2, 2), // 3D effect by setting shadow offset
                        blurRadius: 5.0,
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                      ),
                    ],
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Visibility(
                visible: _sachchithananda,
                child: SizedBox(
                  height: 0.05.sh,
                  child: DefaultTextStyle(
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontFamily: 'meera',
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                      decoration: TextDecoration.none,
                    ),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        RotateAnimatedText('மஹா மந்திரம்'),
                        RotateAnimatedText('மஹா மந்திரம்'),
                        RotateAnimatedText('மஹா மந்திரம்'),

                        // Adjust speed if needed),
                      ],
                      repeatForever: true,
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: !_kStarted,
                child: CustomButton(
                  buttonText: _sachchithananda ? 'பாராயணம் தொடங்க' : '',
                  buttonColor: !_sachchithananda
                      ? Colors.transparent
                      : Colors.deepPurple,
                  fontColor:
                      !_sachchithananda ? Colors.transparent : Colors.white,
                  buttonWidth: !_sachchithananda ? 0.1.sw : 0.60.sw,
                  onPressed: () {
                    Navigator.of(context).push(_createRoute());
                  },
                ),
              ),
              SizedBox(
                height: 0.03.sh,
              ),
              (_isAdLoaded && _bannerAd != null)
                  ? Container(
                      alignment: Alignment.center,
                      height: _bannerAd!.size.height.toDouble(),
                      width: _bannerAd!.size.width.toDouble(),
                      child: AdWidget(ad: _bannerAd!),
                    )
                  : Container(),
              // Show the placeholder
            ]),
          ),
        ),
      ),
    );
  }
}
