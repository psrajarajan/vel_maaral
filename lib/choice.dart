import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vel_maaral/custom_button.dart';
import 'package:vel_maaral/parayanam.dart';
import 'custom_audio.dart';

class Choice extends StatefulWidget {
  const Choice({super.key});
  @override
  State<Choice> createState() => _ChoiceState();
}

class _ChoiceState extends State<Choice> with TickerProviderStateMixin {
  bool _velmaralStart = false;
  bool _textShow = false;
  bool _canClick = false;

  void _velmaralStarted() {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _velmaralStart = true;
      });
    });
  }

  void _textAppear() {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _textShow = true;
      });
    });
  }

  void _buttonEnable() {
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _canClick = true;
      });
    });
  }

  Route _createRoute1() {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) => const D1(),
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

  Route _createRoute2() {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) => const Meaning(),
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

  Route _createRoute3() {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) =>
          const Parayanam(),
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

  Route _createRoute4() {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) =>
          const Explanation(),
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
    super.initState();
    _velmaralStarted();
    _textAppear();
    _buttonEnable();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFE0),
        body: Center(
          child: SingleChildScrollView(
            padding:
                EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 0.07.sh,
                  ),
                  _textShow
                      ? SizedBox(
                          height: 0.12.sh,
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(10.0, 1.0, 10.0, 1.0),
                            child: Text(
                              'வேல் மாறல் பாடல் பதங்களின் பொருளை நன்கு உணர்ந்து,  பிழையின்றி,  பக்தியுடன் வேலை வணங்கி பாராயணத்தைத் தொடங்குவோம்.',
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontFamily: 'meera',
                                fontWeight: FontWeight.bold,
                                fontSize: 11.sp,
                                decoration: TextDecoration.none,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ))
                      : SizedBox(
                          height: 0.12.sh,
                        ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AnimatedContainer(
                          width: 0.30.sw,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.linear,
                          height:
                              _velmaralStart ? 0.45.sh : 0.0.sh, // Initial size
                          child: Image.asset(
                            'assets/images/thirupparangkundram_vel.webp',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: 0.4.sw,
                                height: 0.4.sw,
                                child: Image.asset(
                                  'assets/images/arunagiri_nathar.webp',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Text(
                                'ஞான சித்தர் அருணகிரிநாதர்',
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontFamily: 'meera',
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 0.01.sh,
                              ),
                              SizedBox(
                                width: 0.4.sw,
                                height: 0.4.sw,
                                child: Image.asset(
                                  'assets/images/sachidananda_swamigal.webp',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Text(
                                'ஸ்ரீலஸ்ரீ சச்சிதானந்த சுவாமிகள்',
                                style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontFamily: 'meera',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11.sp,
                                  decoration: TextDecoration.none,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ]),
                      ]),
                  SizedBox(
                    height: 0.01.sh,
                  ),
                  _canClick
                      ? SizedBox(
                          height: 0.35.sh,
                          child: Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'பாராயணம்:',
                                  style: TextStyle(
                                    fontFamily: 'kavivanar',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.none,
                                    color: Colors.brown,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  width: 0.03.sw,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomButton(
                                        buttonText: 'தொடங்க',
                                        buttonColor: Colors.deepPurple,
                                        fontColor: Colors.white,
                                        buttonWidth: 0.3.sw,
                                        onPressed: () {
                                          Navigator.of(context)
                                              .push(_createRoute3());
                                        }),
                                    CustomButton(
                                        buttonText: 'நிறைவு',
                                        buttonColor: Colors.redAccent,
                                        fontColor: Colors.white,
                                        buttonWidth: 0.3.sw,
                                        onPressed: () {
                                          SystemChannels.platform
                                              .invokeMapMethod(
                                                  'SystemNavigator.pop');
                                        }),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 0.01.sh,
                            ),
                            Container(
                              width: 0.95.sw,
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(0, 0, 0, 0),
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: Colors.brown, width: 3.0)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      CustomButton(
                                          buttonText:
                                              'வேல் மாறல் பற்றி மேலும் அறிய',
                                          buttonColor: const Color(0xFF036C5F),
                                          fontColor: Colors.white,
                                          buttonWidth: 0.9.sw,
                                          onPressed: () {
                                            Navigator.of(context)
                                                .push(_createRoute1());
                                          }),
                                      CustomButton(
                                          buttonText:
                                              'பாடல்கள் பதவுரை-வரி வடிவம்',
                                          buttonColor: Colors.green,
                                          fontColor: Colors.white,
                                          buttonWidth: 0.9.sw,
                                          onPressed: () {
                                            Navigator.of(context)
                                                .push(_createRoute2());
                                          }),
                                      CustomButton(
                                          buttonText:
                                              'பாடல்கள் பதவுரை-ஒலி வடிவம்',
                                          buttonColor: Colors.teal.shade400,
                                          fontColor: Colors.white,
                                          buttonWidth: 0.9.sw,
                                          onPressed: () {
                                            Navigator.of(context)
                                                .push(_createRoute4());
                                          }),
                                      CustomButton(
                                        buttonText: 'பாட்டின் பொருளுணர்ந்து...',
                                        buttonColor: Colors.lightBlue,
                                        fontColor: Colors.white,
                                        buttonWidth: 0.9.sw,
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Q1()),
                                          );
                                        },
                                      ),
                                    ]),
                              ),
                            )
                          ]))
                      : SizedBox(height: 0.35.sh),
                ]),
          ),
        ));
  }
}

class Meaning extends StatefulWidget {
  const Meaning({super.key});
  @override
  State<Meaning> createState() => _MeaningState();
}

class _MeaningState extends State<Meaning> {
  late AudioPlayerHandler _paruththaAudioHandler;
  late AudioPlayerHandler _panaikkaiAudioHandler;
  late AudioPlayerHandler _pasiththalakaiAudioHandler;
  late AudioPlayerHandler _pazhuththamuthuAudioHandler;
  late AudioPlayerHandler _salaththuvarumAudioHandler;
  late AudioPlayerHandler _sinaththuavunarAudioHandler;
  late AudioPlayerHandler _solarkariyaAudioHandler;
  late AudioPlayerHandler _sudarparithiAudioHandler;
  late AudioPlayerHandler _surarkkumAudioHandler;
  late AudioPlayerHandler _thalaththilulaAudioHandler;
  late AudioPlayerHandler _thaniththuvazhiAudioHandler;
  late AudioPlayerHandler _tharukkiAudioHandler;
  late AudioPlayerHandler _thiraikkadalaiAudioHandler;
  late AudioPlayerHandler _thisaikkiriyaiAudioHandler;
  late AudioPlayerHandler _thuthikkumAudioHandler;
  late AudioPlayerHandler _thiruththaniyilAudioHandler;

  static bool _commonPlay = false;

  @override
  void initState() {
    _paruththaAudioHandler = AudioPlayerHandler(
      filePath: 'music/paruththa_VV.mp3',
      durationInSeconds: 9,
      onStateChanged: _updateUI,
    );
    _panaikkaiAudioHandler = AudioPlayerHandler(
      filePath: 'music/panaikkai_VV.mp3',
      durationInSeconds: 9,
      onStateChanged: _updateUI,
    );

    _pasiththalakaiAudioHandler = AudioPlayerHandler(
      filePath: 'music/pasiththalakai_VV.mp3',
      durationInSeconds: 9,
      onStateChanged: _updateUI,
    );
    _pazhuththamuthuAudioHandler = AudioPlayerHandler(
      filePath: 'music/pazhuththamuthu_VV.mp3',
      durationInSeconds: 9,
      onStateChanged: _updateUI,
    );
    _salaththuvarumAudioHandler = AudioPlayerHandler(
      filePath: 'music/salaththuvarum_VV.mp3',
      durationInSeconds: 9,
      onStateChanged: _updateUI,
    );

    _sinaththuavunarAudioHandler = AudioPlayerHandler(
      filePath: 'music/sinaththuavunar_VV.mp3',
      durationInSeconds: 9,
      onStateChanged: _updateUI,
    );
    _solarkariyaAudioHandler = AudioPlayerHandler(
      filePath: 'music/solarkariya_VV.mp3',
      durationInSeconds: 9,
      onStateChanged: _updateUI,
    );
    _sudarparithiAudioHandler = AudioPlayerHandler(
      filePath: 'music/sudarparithi_VV.mp3',
      durationInSeconds: 9,
      onStateChanged: _updateUI,
    );

    _surarkkumAudioHandler = AudioPlayerHandler(
      filePath: 'music/surarkkum_VV.mp3',
      durationInSeconds: 9,
      onStateChanged: _updateUI,
    );

    _thalaththilulaAudioHandler = AudioPlayerHandler(
      filePath: 'music/thalaththilula_VV.mp3',
      durationInSeconds: 9,
      onStateChanged: _updateUI,
    );

    _thaniththuvazhiAudioHandler = AudioPlayerHandler(
      filePath: 'music/thaniththuvazhi_VV.mp3',
      durationInSeconds: 9,
      onStateChanged: _updateUI,
    );
    _tharukkiAudioHandler = AudioPlayerHandler(
      filePath: 'music/tharukki_VV.mp3',
      durationInSeconds: 9,
      onStateChanged: _updateUI,
    );

    _thiraikkadalaiAudioHandler = AudioPlayerHandler(
      filePath: 'music/thiraikkadalai_VV.mp3',
      durationInSeconds: 9,
      onStateChanged: _updateUI,
    );
    _thisaikkiriyaiAudioHandler = AudioPlayerHandler(
      filePath: 'music/thisaikkiriyai_VV.mp3',
      durationInSeconds: 9,
      onStateChanged: _updateUI,
    );
    _thuthikkumAudioHandler = AudioPlayerHandler(
      filePath: 'music/thuthikkum_VV.mp3',
      durationInSeconds: 9,
      onStateChanged: _updateUI,
    );

    _thiruththaniyilAudioHandler = AudioPlayerHandler(
      filePath: 'music/thiruththaniyil_VV.mp3',
      durationInSeconds: 10,
      onStateChanged: _updateUI,
    );
    super.initState();
  }

  void _updateUI() {
    setState(() {});
  }

  void _commonPlaying() {
    setState(() {
      _commonPlay = (_paruththaAudioHandler.isPlaying ||
          _panaikkaiAudioHandler.isPlaying ||
          _pasiththalakaiAudioHandler.isPlaying ||
          _pazhuththamuthuAudioHandler.isPlaying ||
          _salaththuvarumAudioHandler.isPlaying ||
          _sinaththuavunarAudioHandler.isPlaying ||
          _solarkariyaAudioHandler.isPlaying ||
          _sudarparithiAudioHandler.isPlaying ||
          _surarkkumAudioHandler.isPlaying ||
          _thalaththilulaAudioHandler.isPlaying ||
          _thaniththuvazhiAudioHandler.isPlaying ||
          _tharukkiAudioHandler.isPlaying ||
          _thiraikkadalaiAudioHandler.isPlaying ||
          _thisaikkiriyaiAudioHandler.isPlaying ||
          _thiruththaniyilAudioHandler.isPlaying ||
          _thuthikkumAudioHandler.isPlaying);
    });
  }

  void _paru() {
    Future.delayed(const Duration(seconds: 1), () async {
      if (!_commonPlay) {
        _paruththaAudioHandler.playAudio();
        await Future.delayed(const Duration(seconds: 11)); // Wait for 9 seconds
        _commonPlaying();
      }
    });
  }

  void _pasi() {
    Future.delayed(const Duration(seconds: 1), () async {
      if (!_commonPlay) {
        _pasiththalakaiAudioHandler.playAudio();
        await Future.delayed(const Duration(seconds: 11)); // Wait for 9 seconds
        _commonPlaying();
      }
    });
  }

  void _panai() {
    Future.delayed(const Duration(seconds: 1), () async {
      if (!_commonPlay) {
        _panaikkaiAudioHandler.playAudio();
        await Future.delayed(const Duration(seconds: 11)); // Wait for 9 seconds
        _commonPlaying();
      }
    });
  }

  void _pazhu() {
    Future.delayed(const Duration(seconds: 1), () async {
      if (!_commonPlay) {
        _pazhuththamuthuAudioHandler.playAudio();
        await Future.delayed(const Duration(seconds: 11)); // Wait for 9 seconds
        _commonPlaying();
      }
    });
  }

  void _sina() {
    Future.delayed(const Duration(seconds: 1), () async {
      if (!_commonPlay) {
        _sinaththuavunarAudioHandler.playAudio();
        await Future.delayed(const Duration(seconds: 11)); // Wait for 9 seconds
        _commonPlaying();
      }
    });
  }

  void _solar() {
    Future.delayed(const Duration(seconds: 1), () async {
      if (!_commonPlay) {
        _solarkariyaAudioHandler.playAudio();
        await Future.delayed(const Duration(seconds: 11)); // Wait for 9 seconds
        _commonPlaying();
      }
    });
  }

  void _sala() {
    Future.delayed(const Duration(seconds: 1), () async {
      if (!_commonPlay) {
        _salaththuvarumAudioHandler.playAudio();
        await Future.delayed(const Duration(seconds: 11)); // Wait for 9 seconds
        _commonPlaying();
      }
    });
  }

  void _sudar() {
    Future.delayed(const Duration(seconds: 1), () async {
      if (!_commonPlay) {
        _sudarparithiAudioHandler.playAudio();
        await Future.delayed(const Duration(seconds: 11)); // Wait for 9 seconds
        _commonPlaying();
      }
    });
  }

  void _surar() {
    Future.delayed(const Duration(seconds: 1), () async {
      if (!_commonPlay) {
        _surarkkumAudioHandler.playAudio();
        await Future.delayed(const Duration(seconds: 11)); // Wait for 9 seconds
        _commonPlaying();
      }
    });
  }

  void _thuthi() {
    Future.delayed(const Duration(seconds: 1), () async {
      if (!_commonPlay) {
        _thuthikkumAudioHandler.playAudio();
        await Future.delayed(const Duration(seconds: 11)); // Wait for 9 seconds
        _commonPlaying();
      }
    });
  }

  void _thani() {
    Future.delayed(const Duration(seconds: 1), () async {
      if (!_commonPlay) {
        _thaniththuvazhiAudioHandler.playAudio();
        await Future.delayed(const Duration(seconds: 11)); // Wait for 9 seconds
        _commonPlaying();
      }
    });
  }

  void _tharu() {
    Future.delayed(const Duration(seconds: 1), () async {
      if (!_commonPlay) {
        _tharukkiAudioHandler.playAudio();
        await Future.delayed(const Duration(seconds: 11)); // Wait for 9 seconds
        _commonPlaying();
      }
    });
  }

  void _thala() {
    Future.delayed(const Duration(seconds: 1), () async {
      if (!_commonPlay) {
        _thalaththilulaAudioHandler.playAudio();
        await Future.delayed(const Duration(seconds: 11)); // Wait for 9 seconds
        _commonPlaying();
      }
    });
  }

  void _thirai() {
    Future.delayed(const Duration(seconds: 1), () async {
      if (!_commonPlay) {
        _thiraikkadalaiAudioHandler.playAudio();
        await Future.delayed(const Duration(seconds: 11)); // Wait for 9 seconds
        _commonPlaying();
      }
    });
  }

  void _thisai() {
    Future.delayed(const Duration(seconds: 1), () async {
      if (!_commonPlay) {
        _thisaikkiriyaiAudioHandler.playAudio();
        await Future.delayed(const Duration(seconds: 11)); // Wait for 9 seconds
        _commonPlaying();
      }
    });
  }

  void _thiru() {
    Future.delayed(const Duration(seconds: 1), () async {
      if (!_commonPlay) {
        _thiruththaniyilAudioHandler.playAudio();
        await Future.delayed(const Duration(seconds: 11)); // Wait for 9 seconds
        _commonPlaying();
      }
    });
  }

  Future<void> _bale() async {
    Future.delayed(const Duration(seconds: 1), () async {
      if (!_commonPlay) {
        _paruththaAudioHandler.playAudio(); //1
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _panaikkaiAudioHandler.playAudio(); //2
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _pazhuththamuthuAudioHandler.playAudio(); //3
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _pasiththalakaiAudioHandler.playAudio(); //4
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _surarkkumAudioHandler.playAudio(); //5
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _sudarparithiAudioHandler.playAudio(); //6
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _thuthikkumAudioHandler.playAudio(); //7
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _solarkariyaAudioHandler.playAudio(); //8
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _tharukkiAudioHandler.playAudio(); //9
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _thalaththilulaAudioHandler.playAudio(); //10
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _thaniththuvazhiAudioHandler.playAudio(); //11
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _salaththuvarumAudioHandler.playAudio(); //12
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _thiraikkadalaiAudioHandler.playAudio(); //13
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _thisaikkiriyaiAudioHandler.playAudio(); //14
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _sinaththuavunarAudioHandler.playAudio(); //15
        await Future.delayed(const Duration(seconds: 9));
        _thiruththaniyilAudioHandler.playAudio(); //16
        await Future.delayed(const Duration(seconds: 14));
        _commonPlaying(); //
      }
    });
  }

  Future<void> _maaral() async {
    Future.delayed(const Duration(seconds: 1), () async {
      if (!_commonPlay) {
        _paruththaAudioHandler.playAudio(); //1
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _thiruththaniyilAudioHandler.playAudio(); //2
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _solarkariyaAudioHandler.playAudio(); //3
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _tharukkiAudioHandler.playAudio(); //4
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _panaikkaiAudioHandler.playAudio(); //5
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _sinaththuavunarAudioHandler.playAudio(); //6
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _thuthikkumAudioHandler.playAudio(); //7
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _thalaththilulaAudioHandler.playAudio(); //8
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _pazhuththamuthuAudioHandler.playAudio(); //9
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _thisaikkiriyaiAudioHandler.playAudio(); //10
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _sudarparithiAudioHandler.playAudio(); //11
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _thaniththuvazhiAudioHandler.playAudio(); //12
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _pasiththalakaiAudioHandler.playAudio(); //13
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _thiraikkadalaiAudioHandler.playAudio(); //14
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _surarkkumAudioHandler.playAudio(); //15
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _salaththuvarumAudioHandler.playAudio(); //16
        await Future.delayed(const Duration(seconds: 11)); // Wait for 9 seconds
        _surarkkumAudioHandler.playAudio(); //17
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _salaththuvarumAudioHandler.playAudio(); //18
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _pasiththalakaiAudioHandler.playAudio(); //19
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _thiraikkadalaiAudioHandler.playAudio(); //20
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _sudarparithiAudioHandler.playAudio(); //21
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _thaniththuvazhiAudioHandler.playAudio(); //22
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _pazhuththamuthuAudioHandler.playAudio(); //23
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _thisaikkiriyaiAudioHandler.playAudio(); //24
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _thuthikkumAudioHandler.playAudio(); //25
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _thalaththilulaAudioHandler.playAudio(); //26
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _panaikkaiAudioHandler.playAudio(); //27
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _sinaththuavunarAudioHandler.playAudio(); //28
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _solarkariyaAudioHandler.playAudio(); //29
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _tharukkiAudioHandler.playAudio(); //30
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _paruththaAudioHandler.playAudio(); //31
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _thiruththaniyilAudioHandler.playAudio(); //32
        await Future.delayed(const Duration(seconds: 11)); // Wait for 9 seconds
        _tharukkiAudioHandler.playAudio(); //33
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _solarkariyaAudioHandler.playAudio(); //34
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _thiruththaniyilAudioHandler.playAudio(); //35
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _paruththaAudioHandler.playAudio(); //36
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _thalaththilulaAudioHandler.playAudio(); //37
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _thuthikkumAudioHandler.playAudio(); //38
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _sinaththuavunarAudioHandler.playAudio(); //39
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _panaikkaiAudioHandler.playAudio(); //40
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _thaniththuvazhiAudioHandler.playAudio(); //41
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _sudarparithiAudioHandler.playAudio(); //42
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _thisaikkiriyaiAudioHandler.playAudio(); //43
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _pazhuththamuthuAudioHandler.playAudio(); //44
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _salaththuvarumAudioHandler.playAudio(); //45
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _surarkkumAudioHandler.playAudio(); //46
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _thiraikkadalaiAudioHandler.playAudio(); //47
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _pasiththalakaiAudioHandler.playAudio(); //48
        await Future.delayed(const Duration(seconds: 11)); // Wait for 9 seconds
        _thiraikkadalaiAudioHandler.playAudio(); //49
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _pasiththalakaiAudioHandler.playAudio(); //50
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _salaththuvarumAudioHandler.playAudio(); //51
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _surarkkumAudioHandler.playAudio(); //52
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _thisaikkiriyaiAudioHandler.playAudio(); //53
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _pazhuththamuthuAudioHandler.playAudio(); //54
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _thaniththuvazhiAudioHandler.playAudio(); //55
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _sudarparithiAudioHandler.playAudio(); //56
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _sinaththuavunarAudioHandler.playAudio(); //57
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _panaikkaiAudioHandler.playAudio(); //58
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _thalaththilulaAudioHandler.playAudio(); //59
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _thuthikkumAudioHandler.playAudio(); //60
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _thiruththaniyilAudioHandler.playAudio(); //61
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _paruththaAudioHandler.playAudio(); //62
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _tharukkiAudioHandler.playAudio(); //63
        await Future.delayed(const Duration(seconds: 9)); // Wait for 9 seconds
        _solarkariyaAudioHandler.playAudio(); //64
        await Future.delayed(const Duration(seconds: 11));
        _commonPlaying(); //
      }
    });
  }

  @override
  void dispose() {
    _paruththaAudioHandler.dispose();
    _panaikkaiAudioHandler.dispose();
    _pasiththalakaiAudioHandler.dispose();
    _pazhuththamuthuAudioHandler.dispose();
    _salaththuvarumAudioHandler.dispose();
    _sinaththuavunarAudioHandler.dispose();
    _solarkariyaAudioHandler.dispose();
    _sudarparithiAudioHandler.dispose();
    _surarkkumAudioHandler.dispose();
    _thalaththilulaAudioHandler.dispose();
    _thaniththuvazhiAudioHandler.dispose();
    _tharukkiAudioHandler.dispose();
    _thiraikkadalaiAudioHandler.dispose();
    _thisaikkiriyaiAudioHandler.dispose();
    _thiruththaniyilAudioHandler.dispose();
    _thuthikkumAudioHandler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFF5EF),
        body: Center(
            child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 0.03.sh,
                ),
                Text(
                  'வேல் மாறல் பதவுரை',
                  style: TextStyle(
                    fontFamily: 'meera',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    color: const Color.fromARGB(255, 128, 0, 32),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 0.02.sh),
                Table(
                    columnWidths: {
                      0: FixedColumnWidth(
                          0.45.sw), // Fixed width of 100 for the first column
                      1: FixedColumnWidth(
                          0.45.sw), // Flexible width for the second column
                    },
                    border: TableBorder.all(
                        color: const Color(0xFF000000),
                        width: 1.0,
                        style: BorderStyle.solid,
                        borderRadius: BorderRadius.circular(16.0)),
                    children: [
                      TableRow(
                        children: [
                          Column(mainAxisSize: MainAxisSize.min, children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('01',
                                    style: TextStyle(
                                      fontFamily: 'Arial',
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.deepPurple,
                                      decoration: TextDecoration.none,
                                    )),
                                Container(
                                  alignment: Alignment.center,
                                ),
                                const BorderedNumber1("1"),
                                const BorderedNumber2("31"),
                                const BorderedNumber1("36"),
                                const BorderedNumber2("62"),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomButton(
                                    buttonText: 'பருத்த',
                                    buttonColor: Colors.brown,
                                    fontColor: Colors.white,
                                    buttonWidth: 0.30.sw,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => const M1()),
                                      );
                                    }),
                                GestureDetector(
                                    child: Icon(
                                        _paruththaAudioHandler.isPlaying
                                            ? Icons.pause
                                            : Icons.play_arrow,
                                        size: 40.0,
                                        color: Colors.green), // Speaker icon
                                    // Size of the icon
                                    onTap: () {
                                      _commonPlaying();
                                      _paru();

                                      setState(
                                          () {}); // Update UI to reflect the state change
                                    }),
                              ],
                            ),
                          ]),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('02',
                                      style: TextStyle(
                                        fontFamily: 'Arial',
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepPurple,
                                        decoration: TextDecoration.none,
                                      )),
                                  const BorderedNumber1("5"),
                                  const BorderedNumber2("27"),
                                  const BorderedNumber1("40"),
                                  const BorderedNumber2("58"),
                                ],
                              ),
                              Row(mainAxisSize: MainAxisSize.min, children: [
                                CustomButton(
                                    buttonText: 'பனைக்கை',
                                    buttonColor: Colors.brown,
                                    fontColor: Colors.white,
                                    buttonWidth: 0.30.sw,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => const M2()),
                                      );
                                    }),
                                GestureDetector(
                                    child: Icon(
                                        _panaikkaiAudioHandler.isPlaying
                                            ? Icons.pause
                                            : Icons.play_arrow,
                                        size: 40.0,
                                        color: Colors.green),
                                    onTap: () {
                                      _commonPlaying();
                                      _panai();

                                      setState(() {});
                                    }),
                              ]),
                            ],
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('03',
                                      style: TextStyle(
                                          fontFamily: 'Arial',
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.deepPurple,
                                          decoration: TextDecoration.none)),
                                  const BorderedNumber1("9"),
                                  const BorderedNumber2("23"),
                                  const BorderedNumber1("44"),
                                  const BorderedNumber2("54"),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomButton(
                                      buttonText: 'பழுத்த',
                                      buttonColor: Colors.green,
                                      fontColor: Colors.white,
                                      buttonWidth: 0.30.sw,
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => const M3()),
                                        );
                                      }),
                                  GestureDetector(
                                      child: Icon(
                                          _pazhuththamuthuAudioHandler.isPlaying
                                              ? Icons.pause
                                              : Icons.play_arrow,
                                          size: 40.0,
                                          color: Colors.green), // Speaker icon

                                      onTap: () {
                                        _commonPlaying();
                                        _pazhu();

                                        setState(() {});
                                      }),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('04',
                                      style: TextStyle(
                                          fontFamily: 'Arial',
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.deepPurple,
                                          decoration: TextDecoration.none)),
                                  const BorderedNumber1("13"),
                                  const BorderedNumber2("19"),
                                  const BorderedNumber1("48"),
                                  const BorderedNumber2("50"),
                                ],
                              ),
                              Row(mainAxisSize: MainAxisSize.min, children: [
                                CustomButton(
                                    buttonText: 'பசித்து',
                                    buttonColor: Colors.green,
                                    fontColor: Colors.white,
                                    buttonWidth: 0.30.sw,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => const M4()),
                                      );
                                    }),
                                GestureDetector(
                                    child: Icon(
                                        _pasiththalakaiAudioHandler.isPlaying
                                            ? Icons.pause
                                            : Icons.play_arrow,
                                        size: 40.0,
                                        color: Colors.green), // Speaker icon

                                    onTap: () {
                                      _commonPlaying();
                                      _pasi();

                                      setState(() {});
                                    }),
                              ]),
                            ],
                          ),
                        ],
                      ),
                      TableRow(children: [
                        Column(mainAxisSize: MainAxisSize.min, children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('05',
                                  style: TextStyle(
                                      fontFamily: 'Arial',
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.deepPurple,
                                      decoration: TextDecoration.none)),
                              const BorderedNumber1("15"),
                              const BorderedNumber2("17"),
                              const BorderedNumber1("46"),
                              const BorderedNumber2("52"),
                            ],
                          ),
                          Row(mainAxisSize: MainAxisSize.min, children: [
                            CustomButton(
                                buttonText: 'சுரர்க்கும்',
                                buttonColor: Colors.brown,
                                fontColor: Colors.white,
                                buttonWidth: 0.30.sw,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const M5()),
                                  );
                                }),
                            GestureDetector(
                                child: Icon(
                                    _surarkkumAudioHandler.isPlaying
                                        ? Icons.pause
                                        : Icons.play_arrow,
                                    size: 40.0,
                                    color: Colors.green), // Speaker icon

                                onTap: () {
                                  _commonPlaying();
                                  _surar();

                                  setState(() {});
                                }),
                          ])
                        ]),
                        Column(mainAxisSize: MainAxisSize.min, children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('06',
                                  style: TextStyle(
                                      fontFamily: 'Arial',
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.deepPurple,
                                      decoration: TextDecoration.none)),
                              const BorderedNumber1("11"),
                              const BorderedNumber2("21"),
                              const BorderedNumber1("42"),
                              const BorderedNumber2("56"),
                            ],
                          ),
                          Row(mainAxisSize: MainAxisSize.min, children: [
                            CustomButton(
                                buttonText: 'சுடர்',
                                buttonColor: Colors.brown,
                                fontColor: Colors.white,
                                buttonWidth: 0.30.sw,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const M6()),
                                  );
                                }),
                            GestureDetector(
                              child: Icon(
                                  _sudarparithiAudioHandler.isPlaying
                                      ? Icons.pause
                                      : Icons.play_arrow,
                                  size: 40.0,
                                  color: Colors.green), // Speaker icon

                              onTap: () {
                                _commonPlaying();
                                _sudar();

                                setState(() {});
                              },
                            ),
                          ]),
                        ]),
                      ]),
                      TableRow(
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('07',
                                      style: TextStyle(
                                          fontFamily: 'Arial',
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.deepPurple,
                                          decoration: TextDecoration.none)),
                                  const BorderedNumber1("7"),
                                  const BorderedNumber2("25"),
                                  const BorderedNumber1("38"),
                                  const BorderedNumber2("60"),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomButton(
                                    buttonText: 'துதிக்கும்',
                                    buttonColor: Colors.green,
                                    fontColor: Colors.white,
                                    buttonWidth: 0.30.sw,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => const M7()),
                                      );
                                    },
                                  ),
                                  GestureDetector(
                                    child: Icon(
                                        _thuthikkumAudioHandler.isPlaying
                                            ? Icons.pause
                                            : Icons.play_arrow,
                                        size: 40.0,
                                        color: Colors.green), // Speaker icon

                                    onTap: () {
                                      _commonPlaying();
                                      _thuthi();

                                      setState(() {});
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('08',
                                      style: TextStyle(
                                          fontFamily: 'Arial',
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.deepPurple,
                                          decoration: TextDecoration.none)),
                                  const BorderedNumber1("3"),
                                  const BorderedNumber2("29"),
                                  const BorderedNumber1("34"),
                                  const BorderedNumber2("64"),
                                ],
                              ),
                              Row(mainAxisSize: MainAxisSize.min, children: [
                                CustomButton(
                                    buttonText: 'சொலற்கு',
                                    buttonColor: Colors.green,
                                    fontColor: Colors.white,
                                    buttonWidth: 0.30.sw,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => const M8()),
                                      );
                                    }),
                                GestureDetector(
                                  child: Icon(
                                      _solarkariyaAudioHandler.isPlaying
                                          ? Icons.pause
                                          : Icons.play_arrow,
                                      size: 40.0,
                                      color: Colors.green), // Speaker icon

                                  onTap: () {
                                    _commonPlaying();
                                    _solar();

                                    setState(() {});
                                  },
                                ),
                              ]),
                            ],
                          )
                        ],
                      ),
                      TableRow(
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('09',
                                      style: TextStyle(
                                          fontFamily: 'Arial',
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.deepPurple,
                                          decoration: TextDecoration.none)),
                                  const BorderedNumber1("4"),
                                  const BorderedNumber2("30"),
                                  const BorderedNumber1("33"),
                                  const BorderedNumber2("63"),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomButton(
                                      buttonText: 'தருக்கி',
                                      buttonColor: Colors.brown,
                                      fontColor: Colors.white,
                                      buttonWidth: 0.30.sw,
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => const M9()),
                                        );
                                      }),
                                  GestureDetector(
                                    child: Icon(
                                        _tharukkiAudioHandler.isPlaying
                                            ? Icons.pause
                                            : Icons.play_arrow,
                                        size: 40.0,
                                        color: Colors.green), // Speaker icon

                                    onTap: () {
                                      _commonPlaying();
                                      _tharu();

                                      setState(() {});
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('10',
                                      style: TextStyle(
                                          fontFamily: 'Arial',
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.deepPurple,
                                          decoration: TextDecoration.none)),
                                  const BorderedNumber1("8"),
                                  const BorderedNumber2("26"),
                                  const BorderedNumber1("37"),
                                  const BorderedNumber2("59"),
                                ],
                              ),
                              Row(mainAxisSize: MainAxisSize.min, children: [
                                CustomButton(
                                    buttonText: 'தலத்தில்',
                                    buttonColor: Colors.brown,
                                    fontColor: Colors.white,
                                    buttonWidth: 0.30.sw,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => const M10()),
                                      );
                                    }),
                                GestureDetector(
                                  child: Icon(
                                      _thalaththilulaAudioHandler.isPlaying
                                          ? Icons.pause
                                          : Icons.play_arrow,
                                      size: 40.0,
                                      color: Colors.green), // Speaker icon

                                  onTap: () {
                                    _commonPlaying();
                                    _thala();

                                    setState(() {});
                                  },
                                ),
                              ]),
                            ],
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('11',
                                      style: TextStyle(
                                          fontFamily: 'Arial',
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.deepPurple,
                                          decoration: TextDecoration.none)),
                                  const BorderedNumber1("12"),
                                  const BorderedNumber2("22"),
                                  const BorderedNumber1("41"),
                                  const BorderedNumber2("55"),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomButton(
                                      buttonText: 'தனித்து',
                                      buttonColor: Colors.green,
                                      fontColor: Colors.white,
                                      buttonWidth: 0.30.sw,
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const M11()),
                                        );
                                      }),
                                  GestureDetector(
                                    child: Icon(
                                        _thaniththuvazhiAudioHandler.isPlaying
                                            ? Icons.pause
                                            : Icons.play_arrow,
                                        size: 40.0,
                                        color: Colors.green), // Speaker icon

                                    onTap: () {
                                      _commonPlaying();
                                      _thani();

                                      setState(() {});
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('12',
                                      style: TextStyle(
                                          fontFamily: 'Arial',
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.deepPurple,
                                          decoration: TextDecoration.none)),
                                  const BorderedNumber1("16"),
                                  const BorderedNumber2("18"),
                                  const BorderedNumber1("45"),
                                  const BorderedNumber2("51"),
                                ],
                              ),
                              Row(mainAxisSize: MainAxisSize.min, children: [
                                CustomButton(
                                    buttonText: 'சலத்து',
                                    buttonColor: Colors.green,
                                    fontColor: Colors.white,
                                    buttonWidth: 0.30.sw,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => const M12()),
                                      );
                                    }),
                                GestureDetector(
                                  child: Icon(
                                      _salaththuvarumAudioHandler.isPlaying
                                          ? Icons.pause
                                          : Icons.play_arrow,
                                      size: 40.0,
                                      color: Colors.green), // Speaker icon

                                  onTap: () {
                                    _commonPlaying();
                                    _sala();

                                    setState(() {});
                                  },
                                ),
                              ]),
                            ],
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('13',
                                      style: TextStyle(
                                          fontFamily: 'Arial',
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.deepPurple,
                                          decoration: TextDecoration.none)),
                                  const BorderedNumber1("14"),
                                  const BorderedNumber2("20"),
                                  const BorderedNumber1("47"),
                                  const BorderedNumber2("49"),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomButton(
                                      buttonText: 'திரை',
                                      buttonColor: Colors.brown,
                                      fontColor: Colors.white,
                                      buttonWidth: 0.30.sw,
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const M13()),
                                        );
                                      }),
                                  GestureDetector(
                                    child: Icon(
                                        _thiraikkadalaiAudioHandler.isPlaying
                                            ? Icons.pause
                                            : Icons.play_arrow,
                                        size: 40.0,
                                        color: Colors.green), // Speaker icon

                                    onTap: () {
                                      _commonPlaying();
                                      _thirai();

                                      setState(() {});
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('14',
                                      style: TextStyle(
                                          fontFamily: 'Arial',
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.deepPurple,
                                          decoration: TextDecoration.none)),
                                  const BorderedNumber1("10"),
                                  const BorderedNumber2("24"),
                                  const BorderedNumber1("43"),
                                  const BorderedNumber2("53"),
                                ],
                              ),
                              Row(mainAxisSize: MainAxisSize.min, children: [
                                CustomButton(
                                    buttonText: 'திசை',
                                    buttonColor: Colors.brown,
                                    fontColor: Colors.white,
                                    buttonWidth: 0.30.sw,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => const M14()),
                                      );
                                    }),
                                GestureDetector(
                                  child: Icon(
                                      _thisaikkiriyaiAudioHandler.isPlaying
                                          ? Icons.pause
                                          : Icons.play_arrow,
                                      size: 40.0,
                                      color: Colors.green), // Speaker icon

                                  onTap: () {
                                    _commonPlaying();
                                    _thisai();

                                    setState(() {});
                                  },
                                ),
                              ]),
                            ],
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('15',
                                      style: TextStyle(
                                          fontFamily: 'Arial',
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.deepPurple,
                                          decoration: TextDecoration.none)),
                                  const BorderedNumber1("6"),
                                  const BorderedNumber2("28"),
                                  const BorderedNumber1("39"),
                                  const BorderedNumber2("57"),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomButton(
                                      buttonText: 'சினத்து',
                                      buttonColor: Colors.green,
                                      fontColor: Colors.white,
                                      buttonWidth: 0.30.sw,
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const M15()),
                                        );
                                      }),
                                  GestureDetector(
                                    child: Icon(
                                        _sinaththuavunarAudioHandler.isPlaying
                                            ? Icons.pause
                                            : Icons.play_arrow,
                                        size: 40.0,
                                        color: Colors.green), // Speaker icon

                                    onTap: () {
                                      _commonPlaying();
                                      _sina();

                                      setState(() {});
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('16',
                                      style: TextStyle(
                                          fontFamily: 'Arial',
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.deepPurple,
                                          decoration: TextDecoration.none)),
                                  const BorderedNumber1("2"),
                                  const BorderedNumber2("32"),
                                  const BorderedNumber1("35"),
                                  const BorderedNumber2("61"),
                                ],
                              ),
                              Row(mainAxisSize: MainAxisSize.min, children: [
                                CustomButton(
                                    buttonText: 'திருத்தணி',
                                    buttonColor: Colors.green,
                                    fontColor: Colors.white,
                                    buttonWidth: 0.30.sw,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => const M16()),
                                      );
                                    }),
                                GestureDetector(
                                  child: Icon(
                                      _thiruththaniyilAudioHandler.isPlaying
                                          ? Icons.pause
                                          : Icons.play_arrow,
                                      size: 40.0,
                                      color: Colors.green), // Speaker icon

                                  onTap: () {
                                    _commonPlaying();
                                    _thiru();
                                    setState(() {});
                                  },
                                ),
                              ]),
                            ],
                          ),
                        ],
                      ),
                    ]),
                SizedBox(
                  height: 0.02.sh,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 0.4.sw,
                          margin: const EdgeInsets.all(1),
                          padding: const EdgeInsets.all(1),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.brown, width: 2),
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.transparent),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('வேல் வகுப்பு',
                                  style: TextStyle(
                                    fontFamily: 'meera',
                                    color: Colors.brown,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.none,
                                  ),
                                  textAlign: TextAlign.center),
                              GestureDetector(
                                child: Icon(
                                    _commonPlay
                                        ? Icons.pause
                                        : Icons.play_arrow,
                                    size: 30.0,
                                    color: Colors.green), // Speaker icon

                                onTap: () {
                                  _commonPlaying();
                                  _bale();
                                  setState(() {});
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 0.05.sw,
                        ),
                        Container(
                          width: 0.4.sw,
                          margin: const EdgeInsets.all(2),
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.brown, width: 2),
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.transparent),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('வேல் மாறல்',
                                  style: TextStyle(
                                    fontFamily: 'meera',
                                    color: Colors.deepPurple,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.none,
                                  ),
                                  textAlign: TextAlign.center),
                              GestureDetector(
                                child: Icon(
                                    _commonPlay
                                        ? Icons.pause
                                        : Icons.play_arrow,
                                    size: 30.0,
                                    color: Colors.green), // Speaker icon

                                onTap: () {
                                  _commonPlaying();
                                  _maaral();
                                  setState(() {});
                                },
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
                SizedBox(
                  height: 0.02.sh,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomButton(
                          buttonText: 'இலக்கணம்',
                          buttonColor: Colors.deepPurple,
                          fontColor: Colors.white,
                          buttonWidth: 0.35.sw,
                          onPressed: () {
                            _commonPlaying();
                            if (!_commonPlay) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const I1()),
                              );
                            }
                          }),
                      SizedBox(
                        width: 0.01.sw,
                      ),
                      CustomButton(
                        buttonText: 'முகப்பு',
                        buttonColor: Colors.green,
                        fontColor: Colors.white,
                        buttonWidth: 0.35.sw,
                        onPressed: () {
                          _commonPlaying();
                          if (!_commonPlay) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Choice()),
                            );
                          }
                        },
                      ),
                    ]),
                SizedBox(
                  height: 0.02.sh,
                ),
              ]),
        )));
  }
}

class BorderedNumber1 extends StatelessWidget {
  final String text;

  const BorderedNumber1(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.07.sw,
      height: 0.07.sw,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
        border: Border.all(color: Colors.grey.shade600),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 2),
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 12,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'arial',
            decoration: TextDecoration.none),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class BorderedNumber2 extends StatelessWidget {
  final String text;

  const BorderedNumber2(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.07.sw,
      height: 0.07.sw,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 2),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 12,
            color: Colors.grey.shade900,
            fontFamily: 'arial',
            decoration: TextDecoration.none),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class D1 extends StatefulWidget {
  const D1({super.key});
  @override
  State<D1> createState() => _D1State();
}

class _D1State extends State<D1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFF4),
      body: Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 0.05.sh,
              ),
              Text(
                'வேல் மாறல் - விளக்கம் (1)\n',
                style: TextStyle(
                  fontFamily: 'meera',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 128, 0, 32),
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'வேல் மாறல்',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text:
                          ' என்பது திருத்தணி முருகப் பெருமானின் வேலின் சிறப்பைக்  கூறும் "மஹா மந்திரம்" ஆகும். மகான் அருணகிரிநாதர் பாடிய திருவகுப்புகளுள் ஒன்றான "வேல் வகுப்பில்" உள்ள 16 கண்ணிகளை (இசைப்பாடல்களை) மேலும் கீழுமாகவும், முன்னும் பின்னுமாகவும் ஏறி இறங்கி வருவது போல் மாறி மாறி வர அமைத்து, அதனை நான்கு மடங்காக, 64 (16x4=64) கண்ணிகளாக அமைய வைத்து, அந்த பாராயண முறையை "வேல்  மாறல்" என்று தொகுத்து அளித்தவர் வள்ளிமலை ஸ்ரீலஸ்ரீ சச்சிதானந்த சுவாமிகள்.\n\n'
                          ' வேல் என்பது வெல் என்ற வினைச் சொல்லிலிருந்து வந்த முதனிலை திரிந்த தொழிற் பெயர்.'
                          ' வேல் என்பது  அடியார்களைக் காக்கும் ஞான ஆயுதம்.'
                          ' "மாறல்" என்றால் மூலம், ஆதாரம், முகாந்திரம், உண்மை, (வணங்க) காரணம் என்று பொருள்.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text:
                          'சந்தக்கவி சித்தர் அருணகிரிநாதர் அருளிய 25 திருவகுப்புகளுள் (18 திருவகுப்புகள் என்று ஒரு கருத்தும் உள்ளது) முதல் மூன்று வகுப்புகள்  (1) "மணி வகுப்பு" என்றழைக்கப்படும் "சீர்பாத வகுப்பு" (ஞானம் தரவல்லது), (2) "மந்திர வகுப்பு" என்றழைக்கப்படும் "தேவேந்திர சங்க வகுப்பு" (துஷ்ட சக்திகளை நீக்கவல்லது), (3) "ஔஷத வகுப்பு" என்றழைக்கப்படும் "வேல் வகுப்பு" முதன்மையானவை. இவற்றுள் உடல் நோய், மன நோய், உயிர் நோய் ஆகிய மூவகைப் பிணிகளுக்கும் உற்ற மருந்தாகி, அவற்றை உடனே தீர்க்கும் ஆற்றல் படைத்தது ஔஷதம் போன்ற "வேல் வகுப்பு". \n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text:
                          'ஒரு பொருளைப் பற்றி மட்டுமே கூறும் சந்தப் பாடல்களின் தொகுப்பைத் தான் "வகுப்பு" என்பர்.'
                          ' "பருத்த" என்று தொடங்கி "வேலே" என்று முடிவதால், இது "பலே" வகுப்பு என்றும் அழைக்கப்படுகிறது.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text:
                          'வேல் வகுப்பு, வேல் மாறலாக மாறும்போது எப்படி மந்திர, சக்கர வடிவம் பெறுகிறது என்பதை, இந்த செயலிக்காகவே முருகன் திருவருளால் உருவாக்கப்பட்ட வரைபடம் மூலம் காணலாம் (அடுத்த திரை). சக்கரத்தைப் பெரியதாக்கிப் பார்க்க முடியும்.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ]),
                  textAlign: TextAlign.justify,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(
                    buttonText: 'பின் செல்க',
                    buttonColor: Colors.brown,
                    fontColor: Colors.white,
                    buttonWidth: 0.38.sw,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Choice()),
                      );
                    },
                  ),
                  CustomButton(
                    buttonText: 'முன் செல்க',
                    buttonColor: Colors.deepPurple,
                    fontColor: Colors.white,
                    buttonWidth: 0.38.sw,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const D2()),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 0.03.sh,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class D2 extends StatefulWidget {
  const D2({super.key});
  @override
  State<D2> createState() => _D2State();
}

class _D2State extends State<D2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFF4),
      body: Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 0.05.sh,
              ),
              Text(
                'வேல் மாறல் - விளக்கம் (2)\n',
                style: TextStyle(
                  fontFamily: 'meera',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 128, 0, 32),
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 5, 15, 5),
                child: Text(
                  'எழுவாய், பயனிலை அமைந்து முழுமை பெறும் வேல் மாறல்',
                  style: TextStyle(
                    fontFamily: 'meera',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 0.02.sh,
              ),
              Container(
                width: 0.95.sw,
                decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: Colors.brown),
                    borderRadius: BorderRadius.circular(8)),
                padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text:
                          '\nவேல் மாறல் பாராயணத்தின் போது, முதல் 15 கண்ணிகளிலிருந்து ஒவ்வொரு கண்ணி ஓதிய பிறகும் 16 ஆவது கண்ணியான "திருத்தணியில்" ஓத வேண்டும்.'
                          ' ஏனெனில், 16 ஆவது கண்ணியான "எழுவாய்" இல்லாமல், மற்ற 15 கண்ணிகளான "பயனிலை" எந்த பொருளும் தராது.\n\n'
                          ' ஆகவே பயனிலையும் எழுவாயும் சேர்ந்தே, ஒரு முழுமையான வாக்கியத்தைத் தரும். \n\n இந்த செயலியில் ஒலி வடிவ "வேல் மாறல்"'
                          ' விளக்கவுரையில் மருத்துவர் ஜெயபாலன் அய்யா அவர்கள் ஒவ்வொரு கண்ணியை விளக்கும் போதும்,'
                          ' திருத்தணி முருகப் பெருமானின் கையில் உள்ள வேல் எப்படிப்பட்டது தெரியுமா? என்று எழுவாயை முன் வைத்து'
                          ' பயனிலை கண்ணியை விளக்குவார்.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text:
                          'விழிக்கு நிகராகும் வேலே, அரமாகும் வேலே, வழி காணும் வேலே,  அருள் நேரும் வேலே,  வினை சாடும் வேலே, ஒளிப்பிரபை வீசும் வேலே...  \n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ]),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                height: 0.02.sh,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(
                    buttonText: 'பின் செல்க',
                    buttonColor: Colors.brown,
                    fontColor: Colors.white,
                    buttonWidth: 0.38.sw,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const D1()),
                      );
                    },
                  ),
                  CustomButton(
                    buttonText: 'முன் செல்க',
                    buttonColor: Colors.deepPurple,
                    fontColor: Colors.white,
                    buttonWidth: 0.38.sw,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const D3()),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 0.04.sh,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class D3 extends StatefulWidget {
  const D3({super.key});
  @override
  State<D3> createState() => _D3State();
}

class _D3State extends State<D3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFF4),
      body: Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 0.05.sh,
              ),
              Text(
                'வேல் மாறல் - விளக்கம் (3)\n',
                style: TextStyle(
                  fontFamily: 'meera',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 128, 0, 32),
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'மனம், மொழி, மெய் மூலம் செய்த \nவினைகளைத் தீர்க்கும் "வேல் மாறல்"\n',
                style: TextStyle(
                  fontFamily: 'meera',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: ' வேல் மாறல் எப்படி நம் வினைகளை தீர்க்க வல்லது?\n\n'
                          '1. பிரம்மன் நம் வினைகளுக்கான பலன்களை நம் தலையில் எழுதி, தன் கையெழுத்தையும் இட்டுள்ளார்  தானே? (ஆமாம்).\n'
                          '2. ஆகவே, அதை யாராலும் மறுக்கவோ மாற்றவோ முடியாது தானே? (ஆமாம்).\n'
                          '3. அவர் எழுதியதை மாற்றாமல், அவர் இட்ட கையெழுத்தை அழித்து விட்டால்,'
                          ' அவர் எழுதிய வினைப் பலன்கள் எல்லாம் செல்லாமல் போகும் தானே? (ஆமாம்).\n'
                          '4. ஆனால் அது எப்படி சாத்தியமாகும்?\n'
                          '5. "சாத்தியம்" ஆகும் என்றால் நம் வினைகள் தீர்ந்துவிடும் என்று  ஒப்புக்கொள்கிறீர்கள்  தானே? (ஆமாம்)\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text:
                          'பிரம்மாவின் கையெழுத்தை அழிப்பது எப்படி சாத்தியமாகும் என்ற ரகசியத்தை'
                          ' நமக்கு அருணகிரியார் இரண்டு கந்தர் அலங்காரப் பாடல்கள் மூலம் விளக்குகிறார்.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text: 'கந்தர் அலங்காரப் பாடல்-15:\n'
                          'தாவடி ஓட்டு மயிலிலும் (பக்தர்கள் குறை தீர்க்க தாவிச் செல்ல முருகன் ஓட்டும் மயிலிலும்), தேவர் தலையிலும், என் பாவடி ஏட்டிலும் பட்டதன்றோ...பெருமான் மருகன் (முருகர்) தன்  சிற்றடியே.\n'
                          '1. மயில் மேல், 2. தேவர்கள் தலை மேல், 3. அருணகிரியார் பாவடி ஏட்டின் மேல் முருகனின் காலடி பட்டுள்ளது.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text:
                          'இப்போது  கந்தர் அலங்காரப் பாடல் 40 யைப் பார்ப்போம்.\n'
                          '"... அவன் கால்பட்டழிந்தது இங்கு என் தலைமேல் அயன் கையெழுத்தே".\n'
                          'கந்தவேளின் திருவடி, அயன் கையெழுத்தை அழித்து விடும் ஆற்றல் உடையது.'
                          ' அப்படிப்பட்ட திருவடிகள் பட்ட திருப்புகழை (வேல் மாறலை) மனம் ஒன்றி நாம் பாராயணம் '
                          'செய்து வந்தால், அயன் (பிரம்மன்) கையெழுத்து அழிவது திண்ணம்.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text:
                          'குறிப்பு: சித்தாந்த கலாநிதி செந்தமிழரசு கி. சிவகுமார் அய்யா அவர்களின் "வேல் மாறல்" சொற்பொழிவில் விளக்கியது\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ]),
                  textAlign: TextAlign.justify,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(
                    buttonText: 'பின் செல்க',
                    buttonColor: Colors.brown,
                    fontColor: Colors.white,
                    buttonWidth: 0.38.sw,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const D2()),
                      );
                    },
                  ),
                  CustomButton(
                    buttonText: 'முன் செல்க',
                    buttonColor: Colors.deepPurple,
                    fontColor: Colors.white,
                    buttonWidth: 0.38.sw,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const D4()),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 0.03.sh,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class D4 extends StatefulWidget {
  const D4({super.key});
  @override
  State<D4> createState() => _D4State();
}

class _D4State extends State<D4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFF4),
      body: Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 0.05.sh,
              ),
              Text(
                'வேல் மாறல் - விளக்கம் (4)\n',
                style: TextStyle(
                  fontFamily: 'meera',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 128, 0, 32),
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'திருத்தணி முருகப்பெருமானின்\nவேலின் சிறப்பு\n',
                style: TextStyle(
                  fontFamily: 'meera',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text:
                          'மூலவர்: சுப்ரமணியசுவாமி, உற்சவர்: சண்முகர், அம்மன்: வள்ளி, தெய்வயானை, தல விருட்சம்: மகுடமரம்,'
                          'தீர்த்தம்: இந்திர தீர்த்தம் தவிர சரவணப்பொய்கை, சரஸ்வதி தீர்த்தம், மடசெட்டிக்குளம், நல்லாங்குளம், '
                          'ஆகமம்/பூஜை: குமார தந்திரம், புராண பெயர்: சிறுதணி. '
                          'அருணகிரிநாதர் திருப்புகழிலும், நக்கீரர் திருமுருகாற்றுப்படையிலும், இராமலிங்க அடிகளும் இந்தலத்து முருகனைக் குறித்துப் பாடியுள்ளார்கள்.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text:
                          'தணிகை என்றால் முருகன் கோபம் தணிந்த இடம் என்று பொருள் கொள்வது தவறு. ஏனெனில், கோபம் என்பது ஒரு மனப் பிணி. தணிகை என்பது அடியவர்களின் வினைகளைத் தணிக்கும் இடம்.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text:
                          'வருடத்தின் நாட்களைக் குறிக்கும் விதமாக 365 படிகளுடன் அமைந்த கோயில் இது. ஒரு லட்சம் ருத்ராட்சங்களால் ஆன ருத்ராட்ச மண்டபம் இங்கு உற்சவர் சன்னதியாக உள்ளது. முருகப் பெருமானின் அறுபடைவீடுகளில் 5ஆவது படைவீடு. திருச்செந்தூரில் சூரனை வதம் செய்து விட்டு வந்து அமர்ந்த தலம். மூலஸ்தானதிற்கு பின்புறமுள்ள சுவரில் குழந்தை வடிவில் ஆதி பாலசுப்ரமணியர் இருக்கிறார். இந்த முருகனே வள்ளி திருமணத்திற்கு முன்பு இங்கு எழுந்தருளியிருந்தார்.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text:
                          'முருகன் வலக்கையில் சக்தி ஹஸ்தம் எனப்படும் வஜ்ரவேலுடன் (இடி போன்ற ஓசை எழுப்பும் சூலம் போன்ற ஆயுதம்), இடக்கையை தொடையில் வைத்து  ஞான சக்தியாக காட்சி தருகிறார். இவரிடம் மற்ற கோவில்களில் காணப்படும் வேல் கிடையாது. அலங்காரத்தின்போது மட்டுமே தனியே வேல் வைக்கின்றனர். மற்ற முருகத்தலங்களில் கந்தசஷ்டியின்போது கொண்டாடப்படும் சூரசம்ஹாரம் இத்தலத்தில் கிடையாது. அன்று சிறப்பாக முருகனுக்கு புஷ்பாஞ்சலி செய்யப்படுகிறது. இத்தலத்திற்கு "குன்றுதோறாடல்" என்ற சிறப்புப் பெயரும் உண்டு.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ]),
                  textAlign: TextAlign.justify,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(
                    buttonText: 'பின் செல்க',
                    buttonColor: Colors.brown,
                    fontColor: Colors.white,
                    buttonWidth: 0.38.sw,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const D3()),
                      );
                    },
                  ),
                  CustomButton(
                    buttonText: 'முன் செல்க',
                    buttonColor: Colors.deepPurple,
                    fontColor: Colors.white,
                    buttonWidth: 0.38.sw,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const D5()),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 0.03.sh,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class D5 extends StatefulWidget {
  const D5({super.key});
  @override
  State<D5> createState() => _D5State();
}

class _D5State extends State<D5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFF4),
      body: Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 0.05.sh,
              ),
              Text(
                'வேல் மாறல் - விளக்கம் (5)\n',
                style: TextStyle(
                  fontFamily: 'meera',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 128, 0, 32),
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text:
                          'தேவேந்திரன் ஐராவதத்தை தெய்வயானைக்குக் கல்யாணப் பரிசாகத் தந்த தலம். இங்கு மூலஸ்தானத்திற்கு முன்பாக மயிலுக்கு பதிலாக யானை உள்ளது. முருகன் இங்கு யானை வாகனத்துடன் காட்சி தருகிறார். இததலத்தில் உள்ள யானை வாகனம் சன்னதியின் வெளியே பார்த்தபடி இருப்பது விசேஷமான ஒன்று. முருகன் வள்ளியை மணக்கச் சென்றபோது விநாயகராகிய யானையைக் கண்டு பயந்து ஓடியதால், தன்னைக் கண்டு மீண்டும் வள்ளி பயந்து விடக்கூடாது என்பதற்காக யானை வடிவில் விநாயகரே வெளியே பார்த்திருப்பதாகச் சொல்கிறார்கள். எத்தலத்திலும் காணமுடியாத வழக்கமாக இத்தலத்து "ஆபத்சகாய" விநாயகரை கடைசியாகத்தான் வணங்குதல் வேண்டுமாம். வள்ளியும் தெய்வானையும் வேறில்லை என்பதன் அடிப்படையில், ஒரே அம்பிகையாக "கஜவள்ளி" என்ற பெயரில் அம்பாள் அருள்பாலிப்பது விசேஷமாகும். முருகனுக்கு, இந்திரனால் கொடுக்கப்பட்ட சந்தனக் கல்லில் அரைக்கப்படும் சந்தனம் மட்டுமே சாத்தப்படுகிறது. இந்த சந்தனத்தை பக்தர்கள் நெற்றியில் இட்டுக்கொள்ளாமல், நீரில் கரைத்து குடித்து விடுகிறார்கள். இதனால் எல்லா நோய்களும் நீங்குவதாக நம்பிக்கை உள்ளது.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text:
                          'ஆங்கிலேயர் ஆண்ட காலத்தில், ஜனவரி முதல் தேதியன்று ஆங்கிலேய அதிகாரிகளைப் பார்த்து வாழ்த்து தெரிவிக்கும் வழக்கம் நம் மக்களிடையே இருந்து வந்தது. '
                          'அந்த அடிமைப் பழக்கத்தை ஒழித்து, அதே தினத்தில் திருத்தணியில் அருள் வழங்கும் நம் தணிகை துரையை தரிசிப்போம் என்ற சிந்தனையில், '
                          '1917 ஆம் ஆண்டு டிசம்பர் 31 ஆம் தேதி முருகன் அடியார்கள் ஆறு பேரை அழைத்துக்கொண்டு கிளம்பி, 1918 ஆம் ஆண்டு ஜனவரி முதல் தேதியன்று. '
                          ' திருப்புகழ் பாடி திருப்படி விழாவை அறிமுகப்படுத்தியவர் வள்ளிமலை ஸ்ரீலஸ்ரீ சச்சிதானந்த சுவாமிகள். '
                          'அதைத் தொடர்ந்து, திருப்புகழ் பாடிக்கொண்டு படி ஏறும் திருப்புகழ் திருப்படி விழா எல்லா மலைத் தலங்களிலும் கொண்டாடப்பட்டு வருகிறது.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ]),
                  textAlign: TextAlign.justify,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(
                    buttonText: 'பின் செல்க',
                    buttonColor: Colors.brown,
                    fontColor: Colors.white,
                    buttonWidth: 0.38.sw,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const D4()),
                      );
                    },
                  ),
                  CustomButton(
                    buttonText: 'முன் செல்க',
                    buttonColor: Colors.deepPurple,
                    fontColor: Colors.white,
                    buttonWidth: 0.38.sw,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const D6()),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 0.03.sh,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class D6 extends StatefulWidget {
  const D6({super.key});
  @override
  State<D6> createState() => _D6State();
}

class _D6State extends State<D6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFF4),
      body: Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 0.05.sh,
              ),
              Text(
                'வேல் மாறல் - விளக்கம் (6)\n',
                style: TextStyle(
                  fontFamily: 'meera',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 128, 0, 32),
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'ஞான சித்தர் அருணகிரிநாதர்\n',
                style: TextStyle(
                  fontFamily: 'meera',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text:
                          'பொ(து).ஊ(ழி). 15-ம் நூற்றாண்டில் (பொ.ஊ.1350-1430) விஜயநகர பேரரசு காலத்தில் வாழ்ந்து முருகக் கடவுள் மீது பாடல்கள் எழுதிய அருளாளர் ஆவார். இவர் திருவண்ணாமலையில் பிறந்தார். இவர் தமிழ் மொழியிலும் மற்றும் வடமொழியிலும் புலமை பெற்றவர். இவர் அருளிய திருப்புகழில் 16,000 இசைப்பாடல்கள் உள்ளன. இவற்றுள் 1088-இற்கும் மேற்பட்ட சந்த வேறுபாடுகள் உள்ளன என்று கணித்து இருக்கிறார்கள். இவரது பாடல்கள் சிக்கலான சந்த நயத்திற்கும், தாள அமைப்பிற்கும் பெயர் பெற்றவை. '
                          'இவர் கல்வியிலும் பக்தியிலும் சிறந்து விளங்கிய வெகு சிலரில் தலைசிறந்தவராகக்  கருதப்படுகிறார்.\n \n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text:
                          'அருணகிரிநாதர் சுவாமிகள் அருளிய  "திருப்புகழ்", 7 ஆம் நூற்றாண்டு காலத்து சைவக் குரவர்களான திருஞானசம்பந்த மூர்த்தி நாயனார், திருநாவுக்கரசு நாயனார், சுந்தரமூர்த்தி நாயனார் அருளிய தேவாரத்திற்கு இணையாகவும், "கந்தர் அலங்காரம்" நான்கு சைவ குரவர்களுள் ஒருவரான 3 ஆம் நூற்றாண்டு காலத்து மாணிக்கவாசகர் அருளிய திருவாசகத்திற்கு இணையாகவும், "கந்தர் அனுபூதி" 11 ஆம் நூற்றாண்டு காலத்து திருமூலர் அருளிய திருமந்திரத்திற்கு இணையாகவும் முருக பக்தர்களால் போற்றப்படுகின்றன.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text:
                          'அருணகிரிநாதர் சுவாமிகள் அருளிய நூல்கள்: கந்தர் அந்தாதி, கந்தர் அலங்காரம், கந்தரனுபூதி, திருப்புகழ், திருவகுப்பு, சேவல் விருத்தம், மயில் விருத்தம், வேல் விருத்தம், திருவெழுகூற்றிருக்கை.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ]),
                  textAlign: TextAlign.justify,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  CustomButton(
                    buttonText: 'பின் செல்க',
                    buttonColor: Colors.brown,
                    fontColor: Colors.white,
                    buttonWidth: 0.38.sw,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const D5()),
                      );
                    },
                  ),
                  CustomButton(
                    buttonText: 'முன் செல்க',
                    buttonColor: Colors.deepPurple,
                    fontColor: Colors.white,
                    buttonWidth: 0.38.sw,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const D7()),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 0.03.sh,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class D7 extends StatefulWidget {
  const D7({super.key});
  @override
  State<D7> createState() => _D7State();
}

class _D7State extends State<D7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFF4),
      body: Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 0.05.sh),
              Text(
                'வேல் மாறல் - விளக்கம் (7)\n',
                style: TextStyle(
                  fontFamily: 'meera',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 128, 0, 32),
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'வள்ளிமலை\nஸ்ரீலஸ்ரீ சத்திதானந்த ஸ்வாமிகள்\n',
                style: TextStyle(
                  fontFamily: 'meera',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text:
                          'இவர் 1870 ஆம் ஆண்டு நவம்பர் மாதம் 25 ஆம் நாளில் பிறந்தார். திருச்செங்கோட்டு அர்த்தநாரீஸ்வரரை வேண்டிப் பிறந்த குழந்தை என்பதால், பெற்றவர்கள் இவருக்கு இட்ட பெயர் அர்த்தநாரி. இளமையிலேயே பெற்றோரை இழந்ததினால் படிப்பில் கவனமில்லாமல் இருந்தார். '
                          'பிற்காலத்தில் மனைவி மக்கள் இறந்த கவலையோடு தீராத வயிற்று வலியிலும் துன்பப்பட்டிருந்தபோது, '
                          'பழனி முருகனை மனமுருக வேண்டி நோயிலிருந்து விடுபட்டார். '
                          'பழனியில் இருந்த சமயத்தில் திருப்புகழ் பாடல்களை மெய்மறந்து கேட்டதனால், அவருடைய ஆன்மீகத் தேடல் அதிகரித்தது.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text:
                          '1916 ஆம் ஆண்டு திருவண்ணாமலைக்கு வந்து ரமண மகரிஷியை தரிசித்தபோது, அவர் வழிகாட்டுதலின்பேரில் சேஷாத்ரி சுவாமிகளைச் சந்தித்தார். '
                          'சேஷாத்ரி சுவாமிகள் சிவ மானச பூஜா ஸ்லோகங்களை இவருக்கு உபதேசித்தார். '
                          'பின்பு வள்ளிமலைக்குச் சென்று திருப்புகழ் பரப்பும் பணிகளை மேற்கொள்ள உத்தரவிட்டார். அதன்படி வள்ளிமலைக்கு வந்து தமது திருப்புகழ் ஆஸ்ரமத்தை அமைத்துக்கொண்டு '
                          'அங்கு வரும் அனைவருக்கும் திருப்புகழை ராக, தாளங்களுடன் போதித்து வந்தார். அவரை வள்ளிமலை சுவாமிகள், சச்சிதானந்த சுவாமிகள், '
                          'திருப்புகழ் சுவாமிகள் என்றெல்லாம் மக்கள்  அன்போடும் பக்தியோடும் அழைக்கலாயினர்.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text: '1918 ஆம் ஆண்டு ஜனவரி முதல் தேதியன்று '
                          'திருப்புகழ் பாடிக்கொண்டு மலை ஏறும்  "திருப்படி" விழாவை அறிமுகப்படுத்தினார். அதைத் தொடர்ந்து, திருப்படி விழா எல்லா மலைத் தலங்களிலும் கொண்டாடப்பட்டு வருகிறது.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text:
                          'ஸ்ரீ ரமண மகரிஷி சமாதியடைந்த 1950 ஆம் ஆண்டு வள்ளிமலை சுவாமிகளும்  சமாதியடைந்தார். வள்ளிமலையில் எந்த குகையில் அவர் அதிக காலம் தவம் செய்து '
                          'திருப்புகழ் புகழ் பரப்பினாரோ, அதே குகையில் அவரது சமாதி அமைந்துள்ளது.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ]),
                  textAlign: TextAlign.justify,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(
                    buttonText: 'பின் செல்க',
                    buttonColor: Colors.brown,
                    fontColor: Colors.white,
                    buttonWidth: 0.38.sw,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const D6()),
                      );
                    },
                  ),
                  CustomButton(
                    buttonText: 'முன் செல்க',
                    buttonColor: Colors.deepPurple,
                    fontColor: Colors.white,
                    buttonWidth: 0.38.sw,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const D8()),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 0.03.sh,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class D8 extends StatefulWidget {
  const D8({super.key});
  @override
  State<D8> createState() => _D8State();
}

class _D8State extends State<D8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFF4),
      body: Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 0.05.sh,
              ),
              Text(
                'வேல் மாறல் - விளக்கம் (8)\n',
                style: TextStyle(
                  fontFamily: 'meera',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 128, 0, 32),
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'வள்ளிமலை\n',
                style: TextStyle(
                  fontFamily: 'meera',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'வள்ளி அம்மன் பிறந்த இடமான வள்ளிமலை'
                            ' ராணிப்பேட்டை மாவட்டத்தில் அமைந்துள்ளது.'
                            ' தமிழ்நாடு வேலூரிலிருந்து சுமார் 30 கி.மீ தொலைவிலும், ராணிப்பேட்டையில் இருந்து சுமார் 18 கி.மீ தொலைவிலும், ஆந்திர மாநிலம் சித்தூரிலிருந்து 30 கி.மீ. தொலைவிலும் வள்ளிமலை கோயில் அமைந்துள்ளது.'
                            ' 9ஆம் நூற்றாண்டில் உருவானதாக சொல்லப்படும் இந்த கோயில் சுமார் 1200 ஆண்டுகள் பழமை வாய்ந்தது.\n\n'
                            ' வள்ளிமலையின் பிரமிக்க வைக்கும் அழகு, எப்போதும் இளமையாக இருக்கும் வள்ளி தேவியின் சான்றாக நிற்கிறது.'
                            ' வள்ளி அம்மன் இங்கு "பொங்கி" (மகிழ்ச்சி) அம்மன் வடிவில் இருக்கிறார்கள். தினசரி அன்னதானம், ஆண்டு முழுவதும் பக்தி நடவடிக்கைகள், மற்றும் விழாக்கள் திருப்புகழ் சபையினரால் நடத்தப்படுகிறன.'
                            ' மாசி மாத பிரம்மோற்சவம் கொடியேற்றத்துடன் தொடங்கி, வெகு விமரிசையாகக் கொண்டாடப்படுகிறது. விழாவின் முக்கிய நிகழ்வாக 4 நாட்கள் கிரி வல தேரோட்டமும் (ஒவ்வொரு இரவும் தங்கி), ஐந்தாம் நாள் வள்ளி திருமணமும் நடைபெறும்.\n\n'
                            ' இது சித்தர்கள் வாழும் பூமியாகும். இவ்வுலகில் பிறந்த ஒவ்வொருவரும் ஒருமுறையாவது  வள்ளிமலைக்குச் சென்று முருகனை தரிசிக்க வேண்டும் என்று வாரியார் சுவாமிகள் கூறுவார்.\n\n',
                        style: TextStyle(
                          fontFamily: 'meera',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      TextSpan(
                        text:
                            ' இளம் பெண்கள் தங்களுடைய தலை மீது குமரித் தீர்த்த (குளத்து) நீரைத் தெளித்துக் கொண்டு தனக்கு நல்ல கணவன் அமைய வேண்டும் என வள்ளியிடம் வேண்டிக் கொள்வது உண்டு என்று பனை ஓலைகளில் எழுதப்பட்டு உள்ள செய்திகள் மூலம் அறியப்படுகின்றது.\n\n',
                        style: TextStyle(
                          fontFamily: 'meera',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown.shade900,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      TextSpan(
                        text:
                            'ஒருநாள் சுவாமிகள் மலை மீது நடந்து கொண்டு இருந்த போது வள்ளியை சுமார் 12 வயது மதிக்கத்தக்க ஒரு சிறு விளையாட்டுப் பெண் உருவில் காண நேர்ந்தது. அந்த சிறுமி பாடிய "விரகற நோக்கியும்" என்ற திருப்புகழ் பாடலில் மகிழ்ந்து, அது முதல் திருப்புகழை ராக தாளங்களுடன் பாடத் துவங்கினார். அங்கேயே ஒரு பாறையில் அவளை "பொங்கி" அம்மனாக ஸ்தாபனம் செய்தார். அவரைத் தேடி வரும் பக்தர்களுக்கு, திருப்புகழை இசையுடன் பாடக் கற்றுக்கொடுத்தார்.\n\n',
                        style: TextStyle(
                          fontFamily: 'meera',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ]),
                    textAlign: TextAlign.justify),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(
                    buttonText: 'பின் செல்க',
                    buttonColor: Colors.brown,
                    fontColor: Colors.white,
                    buttonWidth: 0.38.sw,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const D7()),
                      );
                    },
                  ),
                  CustomButton(
                    buttonText: 'முன் செல்க',
                    buttonColor: Colors.deepPurple,
                    fontColor: Colors.white,
                    buttonWidth: 0.38.sw,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const D9()),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 0.03.sh,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class D9 extends StatefulWidget {
  const D9({super.key});
  @override
  State<D9> createState() => _D9State();
}

class _D9State extends State<D9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFF4),
      body: Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 0.05.sh,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                alignment: Alignment.center,
                child: Text(
                  'வேல் மாறல் - விளக்கம் (9)\n',
                  style: TextStyle(
                    fontFamily: 'meera',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 128, 0, 32),
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: RichText(
                    text: TextSpan(children: <InlineSpan>[
                      TextSpan(
                        text:
                            'பஞ்சாட்சரம் (திருவைந்தெழுத்து), சடாட்சரம் (திரு ஆறெழுத்து) போன்ற மந்திர எழுத்துக்களை ஐங்கோண, அறுகோணச் சக்கரங்கள் கட்டங்களுக்குள் அமைய அடைத்து, அந்த யந்திரங்களைப் பூஜை செய்வதால் உயர்ந்த பலன்கள் கிடைக்கும் என்பார்கள் பெரியோர்கள். அந்த முறையில் இந்த ‘வேல்மாறல்’ அமைப்பையும் வள்ளிமலை சுவாமிகள் உருவாக்கியுள்ளார். வேல்மாறல் பாராயணம் மன ஒருமைப்பாட்டைத் தரும் வல்லமை உடையது. பொதுவாக மன ஒருமைப்பாட்டுடன் மந்திரங்களை உச்சரித்து வழிபடும்போது உண்டாகிற அதிர்வு அலைகளை வேல் மாறல் பாராயணத்தில் உணர முடியும். வேல்மாறலை பக்தி, சிரத்தை, மன ஒருமைப்பாட்டுடன் குறைந்தது ஒரு மண்டல காலம் அதாவது 48 நாட்கள் விடாமல் தொடர்ந்து தினமும் காலையோ அல்லது மாலையோ ஒரு முறையாவது பாராயணம் செய்வது மிகவும் அவசியம். இதனை ஆண், பெண் மற்றும் சாதிமத பேதம் இல்லாமல் யாவரும் பாராயணம் செய்யலாம். நோய், வாழ்க்கைச் சிக்கல் முதலான பிரச்னைகள் இல்லாதவர்கள்கூட இதனைப் பாராயணம் செய்வதால் மேலும் மன உறுதி, மன மகிழ்ச்சி, மன நிறைவு உண்டாகும் என்பதில் ஐயமில்லை.\n\n',
                        style: TextStyle(
                          fontFamily: 'meera',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      TextSpan(
                        text:
                            'மிக முக்கியமாக, அருள்வாசகர் மாணிக்கவாசகர் கூற்றுப்படி எல்லாப் பாடல்களின் பொருளையும் நன்கு உணர்ந்து ஓதவேண்டும்.\n\n',
                        style: TextStyle(
                          fontFamily: 'meera',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      TextSpan(
                        text:
                            'சொல்லிய பாட்டின் பொருளுணர்ந்து சொல்லுவார் செல்வர் சிவபுரத்தி னுள்ளார் சிவனடிக்கீழ்ப் பல்லோரும் ஏத்தப் பணிந்து -- மாணிக்கவாசகர்.\n\n',
                        style: TextStyle(
                          fontFamily: 'meera',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown.shade900,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      TextSpan(
                        text:
                            'பாடலின் பொருள்: பாடும் பாடலின் பொருளை நன்கு உணர்ந்து ஓதுபவர், எல்லோரும் பணிந்து வணங்க சிவ நகரத்திலுள்ளவராய், சிவபெருமானது திருவடிக்கீழ்ச் சென்று நிலை பெறுவர்.\n',
                        style: TextStyle(
                          fontFamily: 'meera',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ]),
                    textAlign: TextAlign.justify),
              ),
              SizedBox(height: 0.01.sh),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  CustomButton(
                    buttonText: 'பின் செல்க',
                    buttonColor: Colors.brown,
                    fontColor: Colors.white,
                    buttonWidth: 0.38.sw,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const D8()),
                      );
                    },
                  ),
                  CustomButton(
                    buttonText: 'முன் செல்க',
                    buttonColor: Colors.deepPurple,
                    fontColor: Colors.white,
                    buttonWidth: 0.38.sw,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const D10()),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 0.03.sh,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class D10 extends StatefulWidget {
  const D10({super.key});
  @override
  State<D10> createState() => _D10State();
}

class _D10State extends State<D10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFF4),
      body: Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 0.05.sh,
              ),
              Text(
                'வேல் மாறல் - விளக்கம் (10)\n',
                style: TextStyle(
                  fontFamily: 'meera',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 128, 0, 32),
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'வேல் மாறல் மஹா மந்திர மகிமை\n',
                style: TextStyle(
                  fontFamily: 'meera',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text:
                            'நாம் செய்த தீவினையை அறுப்பதற்கு வேல்மாறல் என்ற சர்வ ரோக நிவாரணி உதவும். இது கவசமாய் இருந்து நம்மை காக்கும். கலியுகத்தில் நமது பிணிகளுக்கு, அது உடல் பிணியானாலும் சரி, வினைப் பிணியானாலும் சரி, உற்ற மருந்தாக விளங்குவது "வேல் மாறல்" என்னும் மஹா மந்திரமே ஆகும்.\n\n ',
                        style: TextStyle(
                          fontFamily: 'meera',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      TextSpan(
                        text:
                            'மகான் அருணகிரிநாதர் அருளிய ‘வேல் வகுப்பு’ எனும் திருப்புகழை வள்ளிமலை ஸ்ரீலஸ்ரீ சச்சிதாநந்த ஸ்வாமிகள் ‘வேல் மாறல்’ எனும் பாராயணமாக மாற்றி அதை ஒரு மகா மந்திரமாக அருளிச் செய்திருக்கிறார். இதை மனமுருக பாராயணம் செய்தால் கை மேல் பலன் என்பது கண்கூடு.\n\n',
                        style: TextStyle(
                          fontFamily: 'meera',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown.shade900,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      TextSpan(
                        text:
                            'திருத்தணியில் உதித்து அருளும்\nஒருத்தன் மலை விருத்தன்\nஎன(து) உளத்தில் உறை கருத்தன்\nமயில் நடத்து குகன் வேலே\n\n',
                        style: TextStyle(
                          fontFamily: 'meera',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      TextSpan(
                        text:
                            'என்ற வேல் மாறல் மஹா மந்திர கண்ணியை முதலில் 20 முறையும், நிறைவில் 20 முறையும், நடுவில் 68 (17x4=68)  முறையும் ஆக மொத்தம் 108 முறை ஓதுவதால் இது ஒரு மஹா மந்திர சிறப்பைப் பெறுகிறது.\n',
                        style: TextStyle(
                          fontFamily: 'meera',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown.shade900,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ]),
                    textAlign: TextAlign.justify),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.brown, width: 1.0),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Text(
                  '20 + 68 + 20 = 108',
                  style: TextStyle(
                    fontFamily: 'meera',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown.shade900,
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 0.02.sw,
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
                  child: RichText(
                      text: TextSpan(
                        text:
                            'குறிப்பு: இந்த செயலியில் "வேல் மாறல்" பாராயணம் செய்யும் போது, ஒவ்வொரு முறை'
                            ' "திருத்தணியில்" கண்ணி  ஓதும் போதும், கோவில் மணி ஒலி ஒருமுறை ஒலிக்கும் (மொத்தம் 108 முறை ஒலிக்கும்).\n',
                        style: TextStyle(
                          fontFamily: 'meera',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      textAlign: TextAlign.justify)),
              SizedBox(
                height: 0.02.sw,
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
                  child: RichText(
                      text: TextSpan(
                        text:
                            'சிறிய வேலினை நமது கரங்களில் வைத்துக் கொண்டு வேல் மாறலை பாராயணம் செய்தால் முருகன் அருள் முன்னின்று நம்மைக் காக்கும்.'
                            ' வேலினை நமது கைப்பையிலோ சட்டைப் பாக்கெட்டிலோ வைத்திருந்தால், அது கவசம் போல் நாம் செல்லுமிடமெல்லாம் நம்மைக் காக்கும் என்பது உறுதி.\n',
                        style: TextStyle(
                          fontFamily: 'meera',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      textAlign: TextAlign.justify)),
              SizedBox(
                height: 0.02.sw,
              ),
              Container(
                alignment: Alignment.center,
                width: 0.95.sw,
                child: Image.asset(
                  'assets/images/thiruthani_vel.webp',

                  height: 0.05.sh,
                  fit: BoxFit.contain,
                  // Width of the image
                ),
              ),
              SizedBox(
                height: 0.02.sh,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(
                    buttonText: 'பின் செல்க',
                    buttonColor: Colors.brown,
                    fontColor: Colors.white,
                    buttonWidth: 0.38.sw,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const D9()),
                      );
                    },
                  ),
                  CustomButton(
                    buttonText: 'முகப்பு',
                    buttonColor: Colors.green,
                    fontColor: Colors.white,
                    buttonWidth: 0.38.sw,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Choice()),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 0.03.sh,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class I1 extends StatefulWidget {
  const I1({super.key});
  @override
  State<I1> createState() => _I1State();
}

class _I1State extends State<I1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5EF),
      body: Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 0.05.sh,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                alignment: Alignment.center,
                child: Text(
                  'வேல் வகுப்பு-இலக்கணம்\n',
                  style: TextStyle(
                    fontFamily: 'meera',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    color: const Color.fromARGB(255, 128, 0, 32),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text:
                          'எழுத்து, அசை, சீர், தளை, அடி, தொடை ஆகிய ஆறு உறுப்புளின் கட்டமைப்புதான் செய்யுளின் இலக்கணம். குறைந்தபட்ச இலக்கணமாக எழுத்து, அசை, சீர் பற்றி தெரிந்து கொள்வோம்\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text:
                          'எழுத்து: குறில் (உயிர், உயிர்மெய்), நெடில் (உயிர், உயிர்மெய் ), மெய் (ஒற்று) எழுத்துக்கள். (உ. ம்) இ,க, ஐ,மே, ச்\n\n'
                          'அசை: எழுத்துக்களின் சேர்க்கை (குறிப்பிட்ட வரையறையில்).\nஅசை இரு வகைப்படும்.\n(1) நேரசை: குறில் தனித்தோ ஒற்றடுத்தோ, நெடில் தனிதோ ஒற்றடுத்தோ வருவது (உ.ம்) த, மண், நா, வான்\n(2) நிரையசை: இரு குறிலிணைந்தோ ஒற்றடுத்தோ, குறில்நெடில் இணைந்தோ ஒற்றடுத்தோ வருவது\n(உ.ம்) மக, நிலம், நிலா (மேடு-தவறான உதாரணம்-நெடிலோடு குறில்), குழாம்\n\n'
                          'சீர்: ஒன்றுக்கும் மேற்பட்ட அசைகளின் சேர்க்கை\n(உ.ம்) தருக்|கிந|மன்\n\n'
                          'வேல் வகுப்பு பாடல் (கண்ணி), எட்டு சீர்களைக் கொண்ட எண் சீர் வண்ணப் பாவகையைச் சேர்த்தது. சந்தப் பாவின் மேம்பட்ட வடிவமே வண்ணப்பா ஆகும்.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text:
                          '16 கண்ணிகளிலும் "நெடில்" எழுத்து, கடைசி சீரின் முதல் இடத்தில் மட்டும் தான் இருக்கும் (ஆகும், காணும், ......). ஆகவேதான் வேல் வகுப்பின் சந்தம்:\n\n'
                          'தனத்ததன தனத்ததன தனத்ததன தனத்ததன\nதனத்ததன தனத்ததன தனத்ததன தான\n\n'
                          'ஆனால், ஒவ்வொரு கண்ணியிலும் "ஐ" என்ற நெடில் எழுத்து ஒன்றோ அதற்கு மேலோ, வெவ்வேறு இடங்களில் இருப்பதைக் காணலாம் (பனை, அடைத்து, ...). இருந்தும் எப்படி சந்தம் மாறவில்லை? '
                          'எந்த கண்ணியிலும் "ஐ" யைத் தவிர வேறெந்த நெடில் எழுத்தும் இருக்காது. "ஐ" க்கு அப்படி என்ன ஒரு சிறப்பு?\n\n'
                          '"ஐ" என்ற ஒரு நெடில் எழுத்து மட்டும் தான் சொல்லின் இடையிலோ கடையிலோ வரும் போது நெடில் எழுத்துக்கு உரிய'
                          ' (2) மாத்திரை அளவிலிருந்து குறைந்து குறில் எழுத்துக்கு உரிய (1) மாத்திரை அளவில் ஒலிக்கும். இதை  இலக்கணத்தில் "ஐகாரக்குறுக்கம்" என்பர்.'
                          ' "ஐ" என்ற எழுத்து சொல்லின் முதலில் வந்தால் 1 1/2 (ஒன்றரை) மாத்திரை அளவில் ஒலிக்கும். ஆகவேதான் எந்த கண்ணியிலும் "ஐ" என்ற எழுத்து சொல்லின் முதலில் வராமல், இடையிலோ  கடையிலோ'
                          ' வரும்படி மிகவும் கவனமாக அமைத்துள்ளார்.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text:
                          'குறிப்பு: "மாத்திரை" என்பது நாம் இயல்பாக ஒரு முறை கண் இமைக்கும் நேரம்.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text:
                          'சொற்றொடரில் "ஒரு", "ஓர்" பயன்பாட்டின் விதி:\n\nஅடுத்து வரும் சொல்லின் முதலெழுத்து உயிர்மெய் என்றால் "ஒரு" வும், உயிரெழுத்து என்றால் "ஓர்" வும் பயன்படுத்த வேண்டும். (உ. ம்) ஒரு கவிப்புலவன், ஒரு துணை,  ஒரு வலத்தும், ஓர் இடம், ஓர்  ஓடம்.\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ]),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                height: 0.02.sh,
              ),
              CustomButton(
                buttonText: 'பாடல் அட்டவணை',
                buttonColor: Colors.brown,
                fontColor: Colors.white,
                buttonWidth: 0.6.sw,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Meaning()),
                  );
                },
              ),
              SizedBox(
                height: 0.03.sh,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class M1 extends StatefulWidget {
  const M1({super.key});
  @override
  State<M1> createState() => _M1State();
}

class _M1State extends State<M1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5EF),
      body: Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 0.05.sh,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                alignment: Alignment.center,
                child: Text(
                  'வேல் மாறல் - பாடல் பதவுரை-(1)\n',
                  style: TextStyle(
                    fontFamily: 'meera',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 128, 0, 32),
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text:
                          'பருத்தமுலை சிறுத்தஇடை வெளுத்தநகை\nகருத்தகுழல் சிவத்தஇதழ் மறச்சிறுமி\nவிழிக்குநிகர் ஆகும்.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text:
                          'பருத்த முலை ... பெருத்திருக்கும் தன பாரங்களையும்,\nசிறுத்த இடை ... நுண்ணியதாக ஒடுங்கி இருக்கும் இடையையும்,\nவெளுத்த நகை ... வெண்மை நிறம் வீசும் பற்களையும்,\nகருத்த குழல் ... கறுப்பு நிறம் கொண்ட கூந்தலையும்,\nசிவத்த இதழ் ... சிவந்த உதடுகளையும் உடைய,\nமறச் சிறுமி ... வேடர் குலத் திலகமாகிய வள்ளிப் பிராட்டியின்,\nவிழிக்கு நிகராகும் ... திருக் கண்களுக்கு ஒப்பாகும் (குகன் வேலே).\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text:
                          'குழந்தையின் நோயை முலைப்பால் மூலமாக தாய்மார்கள் குணப்படுத்துவார்கள். எல்லா உயிர்களின் உடல், மனப்  பிணியை போக்கும் மருந்தாகிய பாலமுதம் நிரம்பிய பருத்த தன பாரங்களை உடையவர் வள்ளிப் பிராட்டியார்.\nமுருகனின் திருவடி பெருமையை புகழ்வாரின் வினை தேய, இடையை சிறுத்த இடை என்கிறார்.\nபிறவித் தளையை வேரறுக்கும் மாசற்ற வெண்மை ஒளி வீசும் தகுதியினால் அவரின் பற்களை வெளுத்த நகை என்கிறார்.\nஇறைவனைப் புகழாதார் உள்ளம் எப்படி இருக்கும் எனக் காட்டுகிறது தேவியாரின் கருத்த குழல்.\nகுமரனின் ஞான சொற்களைப் பேசும் செழுமை மிக்க உதடுகளை சிவத்த இதழ் என்கிறார்.\nவள்ளி நாச்சியாருக்கு பஞ்ச கிருதியங்கள் என்று கூறப்படும் ஐந்து தொழில்களும் உண்டு என்பதை இவ்வடிகள் ரகசியமாக வெளிப்படுத்துகின்றன.\nவேலுக்கும் இவ்வைந்து தொழில்களும் உண்டு என்பதே இந்த ரகசியம்.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text:
                          'குறிப்பு: "கறுப்பு" என்ற சொல் நிறத்தைக் குறிக்கும் பெயர்ச் சொல்; "கரிய, கருப்பு, கார்" இவை பண்புப் பெயர். (உ.ம்) கருப்பு நாய்.\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ]),
                  textAlign: TextAlign.justify,
                ),
              ),
              CustomButton(
                buttonText: '(2) பனைக்கைமுக',
                buttonColor: Colors.brown,
                fontColor: Colors.white,
                buttonWidth: 0.6.sw,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const M2()),
                  );
                },
              ),
              CustomButton(
                buttonText: 'பாடல் அட்டவணை',
                buttonColor: Colors.green,
                fontColor: Colors.white,
                buttonWidth: 0.6.sw,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Meaning()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class M2 extends StatefulWidget {
  const M2({super.key});
  @override
  State<M2> createState() => _M2State();
}

class _M2State extends State<M2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5EF),
      body: Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 0.05.sh,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                alignment: Alignment.center,
                child: Text(
                  'வேல் மாறல் - பாடல் பதவுரை-(2)\n',
                  style: TextStyle(
                    fontFamily: 'meera',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 128, 0, 32),
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text:
                          'பனைக்கைமுக படக்கரட மதத்தவள\nகசக்கடவுள் பதத்திடுநி களத்துமுளை\nதெறிக்கவர மாகும்\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                    TextSpan(
                      text:
                          'பனைக்கை ... பனை மரம் போன்று நீண்டு தொங்கும் துதிக்கையும்,\nமுக படம் ... (முக படாம்) முகத்தில் அணிந்த சித்திர வேலைப்பாடு அணிந்த சீலையும்,\nகரட(ம்) ... ஆண் யானைகளுக்கு கண்ணுக்கும் காதுக்கும் இடையில் உள்ள சுரப்பிகள்,\nமத ... வழியும் மத நீரையும்,\nதவள ... வெண்ணிறத்தை உடைய,\nகசம் ... (கஜம்) ஐராவதம் என்னும் யானையை,\nகடவுள் ... வாகனமாகக் கொண்ட வானவன் (இந்திரன்),\nபதத்து இடு ... கால்களில் சூரபத்மனால் இடப்பட்ட,\nநிகளத்து ... (யானை காற்சங்கிலி) விலங்கு, (தளை),\nமுளை ... ஆணியானது,\nதெறிக்க ... விலங்கை கழட்டாமல் ஒரே அடியில் சிதறி  விழச் செய்யும்\nஅரம் ஆகும் ... அரம் போல் செயல்படும் (குகன் வேலே)\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                      ),
                    ),
                    TextSpan(
                      text:
                          'குறிப்பு: சித்தாந்த கலாநிதி செந்தமிழரசு கி. சிவகுமார் ஐயா அவர்களின் "வேல் வகுப்பு" சொற்பொழிவில், "கஜக்கடவுள்" என்பது ஐராவதத்தைக் குறிப்பதாகத் தெரிவித்துள்ளார்.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ]),
                  textAlign: TextAlign.justify,
                ),
              ),
              CustomButton(
                buttonText: '(3) பழுத்தமுது',
                buttonColor: Colors.brown,
                fontColor: Colors.white,
                buttonWidth: 0.6.sw,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const M3()),
                  );
                },
              ),
              CustomButton(
                buttonText: 'பாடல் அட்டவணை',
                buttonColor: Colors.green,
                fontColor: Colors.white,
                buttonWidth: 0.6.sw,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Meaning()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class M3 extends StatefulWidget {
  const M3({super.key});
  @override
  State<M3> createState() => _M3State();
}

class _M3State extends State<M3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5EF),
      body: Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 0.05.sh,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                alignment: Alignment.center,
                child: Text(
                  'வேல் மாறல் - பாடல் பதவுரை-(3)\n',
                  style: TextStyle(
                    fontFamily: 'meera',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 128, 0, 32),
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text:
                          'பழுத்தமுது தமிழ்ப்பலகை யிருக்குமொரு\nகவிப்புலவன் இசைக்குருகி வரைகுகையை\nயிடித்துவழி காணும்\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                    TextSpan(
                      text:
                          'பழுத்த ... ஞானம் கனிந்த,\nமுது ... பழமை வாய்ந்த,\nதமிழ்ப் பலகை ... மதுரை தமிழ்ச் சங்க பலகையில்,\nஇருக்கும் ... தலைவனாக அமர்ந்திருக்கும்,\nஒரு கவிப் புலவன் ... ஒப்பற்ற பாக்கள் இயற்றும் அறிவில் சிறந்த நக்கீரனுடைய\nஇசைக்குருகி ... (திருமுருகாற்றுப்படை) இசைப் பாடலின் இனிய பொருள் மிக்க ஒலிக்கு திருவுள்ளம் உருகி,\nவரை குகையை ... (திருப்பரங்கிரி) மலை குகையை,\nஇடித்து வழி காணும் ... அங்கு கற்கிமுகி எனும் பூதத்தால் அடைக்கப் படடிருந்த நக்கீரர் முதலிய புலவர்கள் அனைவரையும் அக்குகையிலிருந்து வெளி வர வழி செய்து கொடுத்தது (குகன் வேலே)\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                      ),
                    ),
                    TextSpan(
                      text:
                          'குறிப்பு: கற்கிமுகி (கல்கி+முகி=குதிரை முகம்) என்ற பூதம் சிவபூஜையில் தவறு செய்த 999 பேரை பிடித்து ஒரு குகையில் வைத்திருந்தது. யாராவது ஒருவர் சிவ பூஜையின் போது கவனத்தை இழந்தால், அந்தப் பூதம் பிடித்துவிடும். ஆயிரம் பேரைப் பிடித்தவுடன் அனைவரையும் சாப்பிட அந்த பூதம் திட்டமிட்டிருந்தது. '
                          'நக்கீரர் தவம் செய்த இடத்திலிருந்த ஆலமரத்திலிருந்து விழுந்த இலை, அருகில் இருந்த நீர்நிலையில், இலையின் ஒரு பாதி மீனாகவும் தரையிலிருந்த மறு பாதி பறவையாகவும் காட்சி தந்தது. அதைக் கண்ட நக்கீரரின் கவனம் திசை திரும்பியது. காத்துக் கொண்டிருந்த கற்கிமுகி பூதம், நக்கீரரைக் கவ்விப் பிடித்து மலை குகைச் சிறையில் அடைத்தது.\n '
                          'நம்மால் மற்றவர்கள் உயிர் இழக்கக் கூடாது என்று எண்ணி, அந்தக் கணமே இசைப்பாடலாக அறுபடைவீடு முருகன் மீது "திருமுருகாற்றுப்படை" பாட, அந்த இசைக்கு உருகி வந்த வேல், குகையை இடித்துத் தள்ளியது.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ]),
                  textAlign: TextAlign.justify,
                ),
              ),
              CustomButton(
                buttonText: '(4) பசித்தலகை',
                buttonColor: Colors.brown,
                fontColor: Colors.white,
                buttonWidth: 0.6.sw,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const M4()),
                  );
                },
              ),
              CustomButton(
                buttonText: 'பாடல் அட்டவணை',
                buttonColor: Colors.green,
                fontColor: Colors.white,
                buttonWidth: 0.6.sw,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Meaning()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class M4 extends StatefulWidget {
  const M4({super.key});
  @override
  State<M4> createState() => _M4State();
}

class _M4State extends State<M4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5EF),
      body: Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 0.05.sh,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                alignment: Alignment.center,
                child: Text(
                  'வேல் மாறல் - பாடல் பதவுரை-(4)\n',
                  style: TextStyle(
                    fontFamily: 'meera',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 128, 0, 32),
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text:
                          'பசித்தலகை முசித்தழுது முறைப்படுதல்\nஒழித்தவுணர் உரத்துதிர நிணத்தசைகள்\nபுசிக்கவருள் நேரும்\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                    TextSpan(
                      text:
                          'அலகை ... பேய்கள்,\nபசித்து ... பசி கொண்டு,\nமுசித்து ... மெலிந்து,\nஅழுது ... அழுது புலம்பி,\nமுறைப் படுதல் ஒழித்து ... எங்கள் பசி தாங்க முடியவில்லையே என முறையிடுதலை அறவே நீக்கி,\nஅவுணர் ... அசுரர்களின்,\nஉரத்து உதிரம் ... மார்பின் இரத்தம் தோய்ந்த,\nநிணத்தசைகள் ... கொழுப்போடு(நிணம்) சேர்ந்த மாமிசத்தை,\nபுசிக்க ... அப்பேய்கள் உண்ண,\nஅருள் நேரும் ... மறக்கருணையால் உடன்படும் (குகன் வேலே).\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                      ),
                    ),
                    TextSpan(
                      text:
                          'தூய காய்கறி உணவு உண்பவர்களை நாடாமல் உணவில் ஒழுக்கம் கெட்ட அவுணர்களின் (அரக்கர்களின்) உடலையே உண்ண பேய்கள் விரையும் போலும்.\n'
                          'அவுணர் செய்த வினையின் வெம்மை தேவியின் கணங்களின் ஒரு பகுதியான பேய்களின் வயிற்றில் பெரும் பசியாய் நுழைந்து, எரி வீச பசி தாங்காமல் அந்தப் பேய்கள் கத்துவதைக் கண்ட வேற்படை, அவைகளின் குறை அகலவும் ஈட்டின வினைகள் அழியவும் உபகாரம் செய்தமையால், அருள் நேரும் வேலே என்கிறார்.\nபேய்களின் முறையீட்டை அகற்றியவன் முருகனே என்று தக்கயாகப் பரணியும் கூறுகிறது.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ]),
                  textAlign: TextAlign.justify,
                ),
              ),
              CustomButton(
                buttonText: '(5) சுரர்க்குமுநி',
                buttonColor: Colors.brown,
                fontColor: Colors.white,
                buttonWidth: 0.6.sw,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const M5(),
                      ));
                },
              ),
              CustomButton(
                buttonText: 'பாடல் அட்டவணை',
                buttonColor: Colors.green,
                fontColor: Colors.white,
                buttonWidth: 0.6.sw,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Meaning()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class M5 extends StatefulWidget {
  const M5({super.key});
  @override
  State<M5> createState() => _M5State();
}

class _M5State extends State<M5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5EF),
      body: Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 0.05.sh,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                alignment: Alignment.center,
                child: Text(
                  'வேல் மாறல் - பாடல் பதவுரை-(5)\n',
                  style: TextStyle(
                    fontFamily: 'meera',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 128, 0, 32),
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text:
                          'சுரர்க்குமுநி வரர்க்குமக பதிக்கும்விதி\nதனக்கும்அரி தனக்குநரர் தமக்குமுறும்\nஇடுக்கண்வினை சாடும்\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                    TextSpan(
                      text:
                          'சுரர்க்கும் ... வானோர்களுக்கும்,\nமுநி(வரர்)க்கும் ... தவத்தில் (சிறந்தவர்) களுக்கும்,\n(மக)பதிக்கும் ... (வேள்வி)களுக்குத் தலைவன், இந்திரனுக்கும்,\nவிதிதனக்கும் ... பிரம்மனுக்கும்,\nஅரி தனக்கும் ... திருமாலுக்கும்,\nநரர் தமக்கும் ... உலக மக்களுக்கும்,\nஉறும் ... நேர்ந்த, நேரும், நேரப்போகும்,\nஇடுக்கண் ... துன்பத்திற்கு காரணமான(உறும் இடுக்கண்-வினைத்தொகை),\nவினை ... தீவினைக் கூட்டங்களை,\nசாடும் ... மோதி அழிக்கும். (குகன் வேலே)..\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                      ),
                    ),
                    TextSpan(
                      text:
                          'தக்கன் வேள்வியில் கலந்துகொண்ட பாவத்தினால் தேவர்கள் அனைவரும் துன்பம் அடைந்தனர். அவர்களின் ஓலத்திற்கு மனம் இரங்கி, இறைவன் ஆறுமுகம் படைத்த குமரனாய் அவதரித்தான். இறுதிப் போரில் சூரன் இமையோரை விழுங்க பெரும் இருள் வடிவம் எடுக்கிறான். வேற்படை அந்த இருளை அகற்ற, சூரபத்மன் பூங்கொத்தும், மரகதக் காயும், செந்நிறப் பழமும், அண்டம் அளாவிய கிளைகளையும் உடைய, நிலத்தின் கீழ் பாதாளம் வரை வேர் விட்டு கடலின் நடுவில் மாமரமாய் நிற்கிறான். உயிர் கூட்டம் துடிப்பதைக் கண்ட வேல் தெய்வம், மாமரத்தைப் பிளந்து, அனைவருக்கும் விடுதலை கொடுத்து, வானவரின் பழைய வினைகளையும் நீக்கிற்று.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                    TextSpan(
                      text:
                          'குறிப்பு: காஷ்யப முனிவர் இந்து பாரம்பரியத்தில் ஒரு மரியாதைக்குரிய பெயர். அவர் அதிதி, திதி (சகோதரிகள்) இருவரை மணந்து முறையே தேவர்கள், அசுரர்களை மகன்களாகப் பெற்றார்.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                      ),
                    ),
                  ]),
                  textAlign: TextAlign.justify,
                ),
              ),
              CustomButton(
                buttonText: '(6) சுடர்ப்பரிதி',
                buttonColor: Colors.brown,
                fontColor: Colors.white,
                buttonWidth: 0.6.sw,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const M6()),
                  );
                },
              ),
              CustomButton(
                buttonText: 'பாடல் அட்டவணை',
                buttonColor: Colors.green,
                fontColor: Colors.white,
                buttonWidth: 0.6.sw,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Meaning()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class M6 extends StatefulWidget {
  const M6({super.key});
  @override
  State<M6> createState() => _M6State();
}

class _M6State extends State<M6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5EF),
      body: Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 0.05.sh,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                alignment: Alignment.center,
                child: Text(
                  'வேல் மாறல் - பாடல் பதவுரை-(6)\n',
                  style: TextStyle(
                    fontFamily: 'meera',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 128, 0, 32),
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text:
                          'சுடர்ப்பரிதி ஒளிப்பநில வொழுக்குமதி\nஒளிப்பஅலை யடக்குதழல் ஒளிப்பவொளிர்\nஒளிப்பிரபை வீசும்\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                    TextSpan(
                      text:
                          'சுடர்ப் பரிதி ஒளிப்ப ... ஒளியை உடைய செங்கதிரோன் தோற்றுப்போய் ஒளித்துக்கொள்ளவும்,\nநிலவு ஒழுக்குமதி ஒளிப்ப ... குளிர்ந்த கிரணங்களைப் பொழியும் வெண்கதிரோனும் ஒளித்துக்கொள்ளவும்,\nஅலை அடக்கு தழல் ஒளிப்ப ... கரை கடந்து உலகை அழிக்காதபடி சமுத்திரத்தை அடக்கிக் கொண்டிருக்கும் வடவாமுக அக்னி ஒளித்துக்கொள்ளவும்,\nஒளிர் ... பிரகாசிக்கின்ற,\nஒளிப்பிரபை வீசும் ... ஒளியை உடைய ஞானாசக்தியை எங்கும் பரவும்படி செய்யும்\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                      ),
                    ),
                    TextSpan(
                      text:
                          'வேலாயுதத்தின் அளவற்ற ஒளியைக் கண்டு ஆற்றாது ஆதவனும், அமுத சீதள கிரணம் கண்டு ஆற்றாது அம்புலியும், பொறுக்க முடியாத எரிவு கண்டு கடலுக்கு அடியில் இருக்கும் "வடவாமுகாக்கினி" அக்னியும் ஒளித்துக் கொள்ளுகின்றன. இம் மூன்றினையும், அதாவது ஒளிரும், குளிரும், எரியும் ஆற்றலை உடைய வேல் என்பதால் ஒளிர் ஒளிப்பிரபை என்கிறார்.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                    TextSpan(
                      text:
                          'குறிப்பு: வடவாமுகாக்கினி என்பது நெருப்பைக் குறிக்கும். இந்து மதத்தில் வடவாமுகாக்கினி என்பது எல்லோராலும் நம்பப்படுகின்ற “ஊழித் தீ” ஆகும். இந்த ஊழித் தீயானது ஒரு பெண் குதிரை உருவத்தில் கடலுக்கு அடியில் இருப்பதாகவும், அது கடலில் ஊற்று முதலியவற்றால் மிகுகின்ற நீர் கரை கடந்து உலகை அழிக்காதபடி அதனை உறிஞ்சி வற்றச் செய்து உலகைக் காத்துக்கொண்டிருக்கிறது என்றும் புராண கதைகள் கூறுகின்றன.\n\nவடவை-பெண் குதிரை\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                      ),
                    ),
                  ]),
                  textAlign: TextAlign.justify,
                ),
              ),
              CustomButton(
                buttonText: '(7) துதிக்கும்',
                buttonColor: Colors.brown,
                fontColor: Colors.white,
                buttonWidth: 0.6.sw,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const M7()),
                  );
                },
              ),
              CustomButton(
                buttonText: 'பாடல் அட்டவணை',
                buttonColor: Colors.green,
                fontColor: Colors.white,
                buttonWidth: 0.6.sw,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Meaning()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class M7 extends StatefulWidget {
  const M7({super.key});
  @override
  State<M7> createState() => _M7State();
}

class _M7State extends State<M7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5EF),
      body: Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 0.05.sh,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                alignment: Alignment.center,
                child: Text(
                  'வேல் மாறல் - பாடல் பதவுரை-(7)\n',
                  style: TextStyle(
                    fontFamily: 'meera',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 128, 0, 32),
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text:
                          'துதிக்குமடி யவர்க்கொருவர் கெடுக்கஇடர்\nநினைக்கினவர் குலத்தைமுத லறக்களையும்\nஎனக்கொருதுணை யாகும்\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                    TextSpan(
                      text:
                          'துதிக்கும் ... தன்னைப் போற்றி வணங்கும்,\nஅடியவர்க்கு ... அன்பர்களுக்கு,\nஒருவர் ... வேறு யாரேனும் ஒருவர்,\nகெடுக்க ... அந்த அடியவரை அழிக்க,\nஇடர் நினைக்கின் ... ஏதேனும் துன்பம் செய்ய மனதில் எண்ணினாலும்,\nஅவர் குலத்தை ... அவர் வம்சத்தையே,\nமுதல் அற களையும் ... வேருடன் அழித்து களைந்து விடும்,\nஎனக்கு ஓர் துணையாகும் ... எனக்கு ஒப்பற்ற துணையாக இருந்து உதவி புரியும் (குகன் வேலே).\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                      ),
                    ),
                    TextSpan(
                      text:
                          'அடியவர்களுக்கு இடையூறு செய்ய நினைப்பவர்களின்  பரம்பரையை வேரோடு களையும் திருப்பணியை ஞான சக்தியாகிய வேல்  செய்துகொண்டே இருக்கும்.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ]),
                  textAlign: TextAlign.justify,
                ),
              ),
              CustomButton(
                buttonText: '(8) சொலற்கரிய',
                buttonColor: Colors.brown,
                fontColor: Colors.white,
                buttonWidth: 0.6.sw,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const M8()),
                  );
                },
              ),
              CustomButton(
                buttonText: 'பாடல் அட்டவணை',
                buttonColor: Colors.green,
                fontColor: Colors.white,
                buttonWidth: 0.6.sw,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Meaning()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class M8 extends StatefulWidget {
  const M8({super.key});
  @override
  State<M8> createState() => _M8State();
}

class _M8State extends State<M8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5EF),
      body: Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 0.05.sh,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                alignment: Alignment.center,
                child: Text(
                  'வேல் மாறல் - பாடல் பதவுரை-(8)\n',
                  style: TextStyle(
                    fontFamily: 'meera',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 128, 0, 32),
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text:
                          'சொலற்கரிய திருப்புகழை யுரைத்தவரை\nயடுத்தபகை யறுத்தெறிய வுறுக்கியெழு\nமறத்தைநிலை காணும்\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                    TextSpan(
                      text:
                          'சொலற்கரிய ... அருமை பெருமைகளை அளவிட்டுச் சொல்ல இயலாத,\nதிருப்புகழை ... இறைவனது அருள் சம்பந்தப்பட்ட திருப்புகழை,\nஉரைத்தவரை ... விருப்புடன் செப்பியவரை,\nஅடுத்த பகை ... நெருங்கிவரும் பகை நிலைமையை,\nஅறுத்தெறிய ... வேருடன் அறுத்து எறிவதற்கு,\nஉறுக்கி எழும் ... உக்ரத்துடன் புறப்படும்,\nஅறத்தை நிலை காணும் ... தர்மத்தை நிலை பெறச் செய்யும் (குகன் வேலே).\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                      ),
                    ),
                    TextSpan(
                      text:
                          'கல்லால மரத்தின் அடியில் சனகாதி முனிவர்கள் நால்வருக்கும் மெய்ப் பொருளை வாக்கினால் சொல்ல முடியாது என்று கையை மட்டும் காட்டிப் போனார் தட்சிணா முர்த்தியார். ஆனால் கருணை மிகுதியால் அருணகிரியார் முருகனின்  திருப்புகழை பல பாக்களினால் விவரித்திருக்கிறார் எனில் முருகனின் திருப்புகழின் பெருமை ஓரளவுதான் அளவிட முடியும்.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ]),
                  textAlign: TextAlign.justify,
                ),
              ),
              CustomButton(
                buttonText: '(9) தருக்கிநமன்',
                buttonColor: Colors.brown,
                fontColor: Colors.white,
                buttonWidth: 0.6.sw,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const M9()),
                  );
                },
              ),
              CustomButton(
                buttonText: 'பாடல் அட்டவணை',
                buttonColor: Colors.green,
                fontColor: Colors.white,
                buttonWidth: 0.6.sw,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Meaning()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class M9 extends StatefulWidget {
  const M9({super.key});
  @override
  State<M9> createState() => _M9State();
}

class _M9State extends State<M9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5EF),
      body: Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 0.05.sh,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                alignment: Alignment.center,
                child: Text(
                  'வேல் மாறல் - பாடல் பதவுரை-(9)\n',
                  style: TextStyle(
                    fontFamily: 'meera',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 128, 0, 32),
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text:
                          'தருக்கிநமன் முருக்கவரின் எருக்குமதி\nதரித்தமுடி படைத்தவிறல் படைத்தஇறை\nகழற்குநிக ராகும்\n\n',
                      style: TextStyle(
                          fontFamily: 'meera',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple),
                    ),
                    TextSpan(
                      text:
                          'நமன் ... எமன்,\nதருக்கி ... இறுமாப்புடன்,\nமுருக்கவரின் ... அழிக்க வந்தால்,\nஎருக்கு ... எருக்க மலரையும்,\nமதி ... திங்களையும்,\nதரித்த முடி படைத்த ... சூடிய ஜடா பாரத்தை உடைய (சிவனுக்குத்தான்  நிரந்தர திரு சடா முடி),\nவிறல் படைத்த ... பெருமை (சிறப்பு/வீரம்/வெற்றி) உடைய,\nஇறை கழற்கு ... எங்கும் இருப்பவரான சிவபிரானின் திருவடிக்கு,\nநிகராகும் ... ஒப்பாகும் (குகன் வேலே).\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                      ),
                    ),
                    TextSpan(
                      text:
                          'குறிப்பு: பதினாறு வயதில் மார்க்கண்டேயர் இறந்துவிடுவார் என்பதை  நினைத்து பெற்றோர் வேதனைப்பட்டனர். மார்க்கண்டேயர் வளந்தார். அவர் நாட்டமெல்லாம் சிவ பூசையில் தான் இருந்தது.\n'
                          'பதினாறு வயது வந்தடைந்து மார்க்கண்டேயர் சிவ பூசையில் தன்னை மறந்து உட்கார்ந்து விடுகின்றார். அவரது உயிரை எடுக்க எம தர்மனே எருமைக்கடா மீது வருகின்றார். உயிர்வாங்க பாசக் கயிற்றினை வீசும்போது, என்ன ஆச்சரியம், உக்கிரமூர்தியாகச் சிவபெருமான் தோன்றி காலனை எட்டி உதைக்கின்றார்.\n'
                          'இங்கு நாம் கவனிக்க வேண்டிய ஒன்று: ஒருவர் மனமொன்றி சிவ பூசை செய்யும் அந்த காலம், அவரின் வாழ்நாள் கால அளவு கணக்கில் வராது. ஆகவே எமன்  போட்ட கணக்கு தப்பாய் போய், சிவனின் உக்கிரத்திற்குக் காரணமாகிறார்.\n\n'
                          'எமனை எட்டி உதைத்த சிவனின் திருவடிக்கு இணையான வேல் என்பதால் எமனை அஞ்ச வைக்கும் என்று நாம் அறியலாம்.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ]),
                  textAlign: TextAlign.justify,
                ),
              ),
              CustomButton(
                buttonText: '(10) தலத்திலுள',
                buttonColor: Colors.brown,
                fontColor: Colors.white,
                buttonWidth: 0.6.sw,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const M10()),
                  );
                },
              ),
              CustomButton(
                buttonText: 'பாடல் அட்டவணை',
                buttonColor: Colors.green,
                fontColor: Colors.white,
                buttonWidth: 0.6.sw,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Meaning()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class M10 extends StatefulWidget {
  const M10({super.key});
  @override
  State<M10> createState() => _M10State();
}

class _M10State extends State<M10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5EF),
      body: Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 0.05.sh,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                alignment: Alignment.center,
                child: Text(
                  'வேல் மாறல் - பாடல் பதவுரை-(10)\n',
                  style: TextStyle(
                    fontFamily: 'meera',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 128, 0, 32),
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text:
                          'தலத்திலுள கணத்தொகுதி களிப்பினுண\nவழைப்பதென மலர்க்கமல கரத்தின்முனை\nவிதிர்க்கவளை வாகும்\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                    TextSpan(
                      text:
                          'தலத்தில் உள ... உலகத்தில் உள்ள,\nகணத்தொகுதி ... உயிர்க் கூட்டம்,\nகளிப்பின் உணவு ... மகிழ்வோடு உண்பதற்கு உணவு,\nஅழைப்பதென ... அழைக்க நேரிட்டால்,\nமலர்க் கமல கரத்தின் ... மலர்ந்த தாமரை போன்ற திருக் கரத்தில்,\nமுனை ... நுனியை,\nவிதிர்க்க... அசைக்க\nவளைவு ஆகும் ... வளைத்துக்கொண்டு வரும் (குகன் வேலே).\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                      ),
                    ),
                    TextSpan(
                      text:
                          'உலகத்தில் உள்ள எல்லா உயிர்களும் பெருமகிழ்ச்சி பெறும் அளவுக்கு உணவளிக்க நேரிடும்போது, மலர்ந்த தாமரை மலருக்கு ஒப்பான முருகன் திருக்கரத்தில் இருந்தபடியே, அவர் அதன் நுனியை லேசாக அசைத்தவுடன், உணவுப் பொருட்களை வளைத்துக்கொண்டு சேர்த்துவிடும். (வேல் பசியைப் போக்கும்; வறுமையின்றி வாழ வைக்கும்; நமது கருத்தறிந்து முடிக்கும்; நாம் நினைப்பதையெல்லாம் நிறைவேற்றும்).\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ]),
                  textAlign: TextAlign.justify,
                ),
              ),
              CustomButton(
                buttonText: '(11) தனித்துவழி',
                buttonColor: Colors.brown,
                fontColor: Colors.white,
                buttonWidth: 0.6.sw,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const M11()),
                  );
                },
              ),
              CustomButton(
                buttonText: 'பாடல் அட்டவணை',
                buttonColor: Colors.green,
                fontColor: Colors.white,
                buttonWidth: 0.6.sw,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Meaning()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class M11 extends StatefulWidget {
  const M11({super.key});
  @override
  State<M11> createState() => _M11State();
}

class _M11State extends State<M11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5EF),
      body: Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 0.05.sh,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                alignment: Alignment.center,
                child: Text(
                  'வேல் மாறல் - பாடல் பதவுரை-(11)\n',
                  style: TextStyle(
                    fontFamily: 'meera',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 128, 0, 32),
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text:
                          'தனித்துவழி நடக்குமென திடத்துமொரு\nவலத்துமிரு புறத்துமரு கடுத்திரவு\nபகற்றுணைய தாகும்\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                    TextSpan(
                      text:
                          'தனித்து ... துணையின்றி தன்னந் தனியாய்,\nவழி நடக்கும் ... வழியில் நடக்கின்ற,\nஎனது இடத்தும் ... எனது இடப் பக்கமும்,\nஒரு வலத்தும் ... ஒப்பற்ற வலது புறத்தும்,\nஇரு புறத்தும் ... முன்னும் பின்னுமான இரண்டு பக்கங்களிலும்,\nஅருகு அடுத்து ... அண்டையில் நெருங்கி,\nஇரவு பகல் துணையதாகும் ... இராக் காலத்திலும் பகல் காலத்திலும் துணையாக இருந்து என்னைக் காப்பாற்றும் (குகன் வேலே).\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                      ),
                    ),
                    TextSpan(
                      text:
                          'பரமனைத் தரிசிக்கும் வேட்கையால் இரவென்றும் பகலென்றும் பாராமல் குமரக் கோட்டங்களை எண்ணி எண்ணி வழி நோக்கி தன்னம் தனியாக செல்லும் எனக்கு பூத பிசாசுகள், கள்வர், இயற்கை சீற்றங்கள் இவைபோன்ற பற்பல துன்பங்கள் நேராதபடி குகன் வேல் எப்போதும் எனக்கு அருகிலேயே இருந்து என்னைக் காக்கும் என்கிறார் அருணகிரியார்.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ]),
                  textAlign: TextAlign.justify,
                ),
              ),
              CustomButton(
                buttonText: '(12) சலத்துவரும்',
                buttonColor: Colors.brown,
                fontColor: Colors.white,
                buttonWidth: 0.6.sw,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const M12()),
                  );
                },
              ),
              CustomButton(
                buttonText: 'பாடல் அட்டவணை',
                buttonColor: Colors.green,
                fontColor: Colors.white,
                buttonWidth: 0.6.sw,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Meaning()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class M12 extends StatefulWidget {
  const M12({super.key});
  @override
  State<M12> createState() => _M12State();
}

class _M12State extends State<M12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5EF),
      body: Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 0.05.sh),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                alignment: Alignment.center,
                child: Text(
                  'வேல் மாறல் - பாடல் பதவுரை-(12)\n',
                  style: TextStyle(
                    fontFamily: 'meera',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 128, 0, 32),
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text:
                          'சலத்துவரும் அரக்கருடல் கொழுத்துவளர்\nபெருத்தகுடர் சிவத்ததொடை யெனச்சிகையில்\nவிருப்பமொடு சூடும்\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                    TextSpan(
                      text:
                          'சலத்து வரும் அரக்கர் உடல் ... கோபப்பட்டு வருகின்ற அசுரர்களின் உடம்பில்,\nகொழுத்து வளர் ... பல தகாத உணவு வகைகளை உண்டு கொழுப்படைந்து வளர்ந்துள்ள,\nபெருத்த குடர் ... பெருத்திருக்கின்ற குடல்களை,\nசிவத்த தொடை என ... சிவத்த பூ மாலை போல,\nசிகையில் விருப்பமொடு சூடும் ... தன் உச்சியில் பிரியத்துடன் தரித்துக் கொள்ளும் (குகன் வேலே).\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                      ),
                    ),
                    TextSpan(
                      text:
                          'எங்குமே, என்றுமே அமைதி காணாது பெரும் சினத்தோடு விளங்கும் அவுணரை சலத்து வரும் என்கிறார். அசுரர்கள் அரக்கு போன்ற சென்னிற மேனியர் ஆதலால் அவர்களை அரக்கர் என்கிறார். அசுரர்கள் தின்பதைத் தவிர மற்ற ஒன்றும் செய்து அறியாதவர்கள். ஆதலால் அவர்களை கொழுத்துவளர் என்கிறார். வேல் தனது ஆற்றலுக்கு இசைய அந்த அரக்கர்களது சிறு குடல்களை நீக்கி நீண்டு வளர்ந்துள்ள பெருங் குடல்களையே மாலைகளாக (தொடை) சூடும் என்பதால் பெருத்த குடர் என்கிறார். அசுரரை அழிப்பது வேலுக்கு உவகை தரும் தொழில் என்பதால் விருப்பமொடு சூடும் என்கிறார்.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ]),
                  textAlign: TextAlign.justify,
                ),
              ),
              CustomButton(
                buttonText: '(13) திரைக்கடலை',
                buttonColor: Colors.brown,
                fontColor: Colors.white,
                buttonWidth: 0.6.sw,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const M13()),
                  );
                },
              ),
              CustomButton(
                buttonText: 'பாடல் அட்டவணை',
                buttonColor: Colors.green,
                fontColor: Colors.white,
                buttonWidth: 0.6.sw,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Meaning()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class M13 extends StatefulWidget {
  const M13({super.key});
  @override
  State<M13> createState() => _M13State();
}

class _M13State extends State<M13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5EF),
      body: Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 0.05.sh,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                alignment: Alignment.center,
                child: Text(
                  'வேல் மாறல் - பாடல் பதவுரை-(13)\n',
                  style: TextStyle(
                    fontFamily: 'meera',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 128, 0, 32),
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text:
                          'திரைக்கடலை யுடைத்துநிறை புனர்கடிது\nகுடித்துடையும் உடைப்படைய அடைத்துதிர\nநிறைத்துவிளை யாடும்\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                    TextSpan(
                      text:
                          'திரைக்கடலை ... அலைகள் வீசும் கடலை,\nஉடைத்து ... பிளந்து,\nநிறை புனர் ... சமுத்திரத்தில் நிறைந்துள்ள நீரை\nகடிது குடித்து ... விரைவில் உருஞ்சிப் பருகி,\nஉடையும் ... உடைந்து போன\nஉடைப்பை அடைய அடைத்து ... உடைப்பு முழுவதும் ஆங்காங்கு அணையிட்டது போல் அடைத்து,\nஉதிரம் நிறைத்து விளையாடும் ... வெற்றிடமாய் இருந்த கடல் பரப்பில் அவுணர்களின் இரத்தத்தை நீருக்குப் பதிலாக நிரப்பி விளையாடி நிற்கும் (குகன் வேலே).\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                      ),
                    ),
                    TextSpan(
                      text:
                          'இந்த அரிய செயல் குகனின் வேற்படைக்கு ஒரு சிறு விளையாட்டு காரியமாக இருந்தது என்கிறார் அருணை முனிவர்.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ]),
                  textAlign: TextAlign.justify,
                ),
              ),
              CustomButton(
                buttonText: '(14) திசைக்கிரியை',
                buttonColor: Colors.brown,
                fontColor: Colors.white,
                buttonWidth: 0.6.sw,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const M14()),
                  );
                },
              ),
              CustomButton(
                buttonText: 'பாடல் அட்டவணை',
                buttonColor: Colors.green,
                fontColor: Colors.white,
                buttonWidth: 0.6.sw,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Meaning()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class M14 extends StatefulWidget {
  const M14({super.key});
  @override
  State<M14> createState() => _M14State();
}

class _M14State extends State<M14> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5EF),
      body: Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 0.05.sh,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                alignment: Alignment.center,
                child: Text(
                  'வேல் மாறல் - பாடல் பதவுரை-(14)\n',
                  style: TextStyle(
                    fontFamily: 'meera',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 128, 0, 32),
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text:
                          'திசைக்கிரியை முதற்குலிசன் அறுத்தசிறை\nமுளைத்ததென முகட்டினிடை பறக்கவற\nவிசைத்ததிர வோடும் \n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                    TextSpan(
                      text:
                          'திசைக் கிரியை ... எட்டு திக்குகளிலும் உள்ள மலைகளை,\nமுதற் குலிசன் ... குலிசாயுதம் (வஜ்ராயுதம்) ஏந்திய  தேவர்களில் முதன்மை வாய்ந்த இந்திரன்,\nஅறுத்த சிறை முளைத்ததென ... அறுத்துத் தள்ளின இறக்கைகள் மறுபடியும் முளைத்தது என்று பார்ப்போர்கள் கூறுமாறு,\nமுகட்டின்(முகடு) ... (மலை) உச்சியின்,\nஇடை பறக்க ... நடுவில் பறந்துகொண்டு,\nஅற விசைத்து ... முழுவதும் (அளவில்லா) வேகம் கொண்டு,\nஅதிர ஓடும் ... அகில உலகங்கள் நடுங்கும்படி விரைந்து ஓடும் (குகன் வேலே).\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                      ),
                    ),
                    TextSpan(
                      text:
                          'பண்டை காலத்தில் மலைகள் அனைத்தும் சிறகுகளுடன் பறந்து உலகோருக்கு கேடு விளைத்து வந்தன. இதை அறிந்த இந்தரன், வஜ்ராயுத்தால் மலைகளின் சிறகுகளை அறுத்து எறிந்தான். அன்று முதல் மலைகளனைத்தும் நிலத்தில் அழுந்தி, பூதரம் எனப் பெயர் பெற்றன. பின்பு முருகனுடைய வேற்படை அண்ட உச்சியில் அதிவேகத்தோடு பறந்தபோது, உலகெல்லாம் கிடுகிடு என அதிர்ந்தன. மீண்டும் மலைகளுக்கு சிறகுகள் முளைத்தனவோ என உலகோர் அஞ்சினர் என்கிறார்.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ]),
                  textAlign: TextAlign.justify,
                ),
              ),
              CustomButton(
                buttonText: '(15) சினத்தவுணர்',
                buttonColor: Colors.brown,
                fontColor: Colors.white,
                buttonWidth: 0.6.sw,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const M15()),
                  );
                },
              ),
              CustomButton(
                buttonText: 'பாடல் அட்டவணை',
                buttonColor: Colors.green,
                fontColor: Colors.white,
                buttonWidth: 0.6.sw,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Meaning()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class M15 extends StatefulWidget {
  const M15({super.key});
  @override
  State<M15> createState() => _M15State();
}

class _M15State extends State<M15> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5EF),
      body: Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 0.05.sh,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                alignment: Alignment.center,
                child: Text(
                  'வேல் மாறல் - பாடல் பதவுரை-(15)\n',
                  style: TextStyle(
                    fontFamily: 'meera',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 128, 0, 32),
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text:
                          'சினத்தவுணர் எதிர்த்தரண களத்தில்வெகு\nகுறைத்தலைகள் சிரித்தெயிறு கடித்துவிழி\nவிழித்தலற மோதும்\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                    TextSpan(
                      text:
                          'சினத்தவுணர் ... கோபத்தை உடைய அசுரர்கள்,\nஎதிர்த்த ரண களத்தில் ... போர் செய்த யுத்த களத்தில்,\nவெகு குறைத்தலைகள் ... உடலில் இருந்து அறுக்கப்பட்ட அளவற்ற தலைகள்,\nசிரித்து ... நாம் எப்படி எல்லாம் இருந்தோம், இப்போது இந்த நிலைக்கு வந்து விட்டோமே என்று வருந்தி தமக்குத் தாமே சிரித்துக்கொண்டு,\nஎயிறு கடித்து ... பற்களை நற நற என் கடித்துக் கொண்டு,\nவிழி விழித்து ... கண்களை உறுட்டிப் பார்த்து,\nஅலற மோதும் ... வாய் விட்டு அலறும்படி அசுரர்களைத் தாக்கும் (குகன் வேலே).\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade900,
                      ),
                    ),
                  ]),
                  textAlign: TextAlign.justify,
                ),
              ),
              CustomButton(
                buttonText: '(16) திருத்தணியில்',
                buttonColor: Colors.brown,
                fontColor: Colors.white,
                buttonWidth: 0.6.sw,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const M16()),
                  );
                },
              ),
              CustomButton(
                buttonText: 'பாடல் அட்டவணை',
                buttonColor: Colors.green,
                fontColor: Colors.white,
                buttonWidth: 0.6.sw,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Meaning()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class M16 extends StatefulWidget {
  const M16({super.key});
  @override
  State<M16> createState() => _M16State();
}

class _M16State extends State<M16> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5EF),
      body: Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 0.05.sh,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                  alignment: Alignment.center,
                  child: Text(
                    'வேல் மாறல் - பாடல் பதவுரை-(16)\n',
                    style: TextStyle(
                      fontFamily: 'meera',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 128, 0, 32),
                      decoration: TextDecoration.none,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text:
                            'திருத்தணியில் உதித்தருளும் ஒருத்தன்மலை\nவிருத்தனென துளத்திலுறை கருத்தன்மயில்\nநடத்துகுகன் வேலே\n\n',
                        style: TextStyle(
                          fontFamily: 'meera',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                        ),
                      ),
                      TextSpan(
                        text:
                            'திருத்தணியில் ... சாந்திநிகேதனம் எனப்படும் தணிகையம்பதியில்,\nஉதித்தருளும் ஒருத்தன் ... ஞான சூரியனாய் காட்சி நல்கும் ஒப்பற்றவனும்,\nமலை விருத்தன் ... மலைக் கிழவனும் (குறிஞ்சிக் கிழவன்),\nஎனது உளத்திலுறை கருத்தன் ... என்னுடைய மனதில் எழுந்தருளி இருக்கும் கடவுளும் ஆகிய,\nமயில் நடத்து குகன் வேலே ... மயிலை வாகனமாகக்கொண்ட முருகப் பெருமானது வேலாயுதமே (மேற்சொன்ன சிறப்புகளைக்கொண்டதாகும்).\n\n'
                            'நானிலம்: குறிஞ்சி (மலையும், மலை சார்ந்த இடமும்), நெய்தல் (கடலும், கடல் சாரந்த இடமும்), மருதம் (வயலும், வயல் சார்ந்த இடமும், முல்லை (காடும், காடு சார்ந்த இடமும்). இவைகளுக்கிடையில் அமைந்த இடம் "பாலை"\n \n',
                        style: TextStyle(
                          fontFamily: 'meera',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown.shade900,
                        ),
                      ),
                    ]),
                    textAlign: TextAlign.justify,
                  ),
                ),
                CustomButton(
                  buttonText: 'பாடல் அட்டவணை',
                  buttonColor: Colors.green,
                  fontColor: Colors.white,
                  buttonWidth: 0.60.sw,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Meaning()),
                    );
                  },
                ),
                CustomButton(
                  buttonText: 'குகன் வேலின் சிறப்பு',
                  buttonColor: Colors.brown,
                  fontColor: Colors.white,
                  buttonWidth: 0.60.sw,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const KuganVel()),
                    );
                  },
                ),
              ]),
        ),
      ),
    );
  }
}

class KuganVel extends StatefulWidget {
  const KuganVel({super.key});
  @override
  State<KuganVel> createState() => _KuganVelState();
}

class _KuganVelState extends State<KuganVel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5EF),
      body: Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                alignment: Alignment.center,
                child: Text(
                  'வேல் மாறல் - குகன் வேலின் சிறப்பு\n',
                  style: TextStyle(
                    fontFamily: 'meera',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 128, 0, 32),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text:
                          'உலகங்கள் அனைத்திற்கும் ஒளி விளங்க, அமைதி நிலையமான திருத்தணியில் உதயமாகும் ஞான திவாகரன், உலகம் அனைத்தையும் தாங்கும் குறிஞ்சிக் கிழவன், அடியேன் உள்ளத்தில் தங்கி இருக்கும் கடவுள், மயில் எனப்படும் ஆவரண சக்தியை ஏறி நடத்தும் எம்மான், உயிர்களின் உள்ளமாம் குகையில் எப்போதும் உறைகின்ற ஒப்பற்றவன் ஆகிய குகப் பெருமான் திருக்கரத்தில் தாங்கி இருக்கும் ஞான சக்தியாகிய வேலாயுதம்,1. வள்ளிப் பிராட்டியின் திருக்கண்களுக்கு ஒப்பாகும்,2. இந்திரனின் கால் விலங்கின் முளை தெறிக்க அராவும் அரமாகும்,3. குகையை இடித்து வழி தெரியும்படி செய்யும்,4. பேய்களின் பசி அகல உபகரிக்கும்,5. அனைவரையும் துன்பப்படுத்தும் வினைப் பெருக்கங்களை மோதி அழிக்கும்,6. ஒளி எல்லாம் நாண பேரொளி வீசும்,7. அடியவர்களுக்கு இடையூறு செய்ய நினைத்தாலே அவர் குலத்தையே நாசம் செய்யும்,8. எனக்கு எப்போதும் ஒப்பற்ற துணையாக வந்து உதவும்,9.முருகப் பெருமானின் திருப்புகழ் பாடுவோருக்கு நேரும் பகைகளை அறுத்து எறிய உக்கிரத்துடன் புறப்படும்,10. அறத்தை நிலை பெறச் செய்யும்,11. எமன் பற்றவரின் மார்க்கண்டேயரைக் காக்க சிவபிரான் நீட்டிய திருவடி போல் விரைந்து வந்து அந்த எமனை கண்டித்து அடியாரைக் காக்கும்,12. இறைவனின் திருக்கரங்கள் அசையும்போதெல்லாம் உலக உயிர்களையெல்லாம்  அமுதுண்ண அழைப்பதுபோல் தானும் தனது திருமுடியை வளைத்து காட்டும்,13. தனி வழியில் வேறு துணையின்றி செல்லும்போதெல்லாம் இரவும் பகலும் துணையாக வந்து அச்சம் அகற்றும்,14. அரக்கர்களின் பெருங்குடல்களை எடுத்து மாலைபோல் விருப்பமுடன் சூடிக்கொள்ளும்,15. கடலை உடைத்து, புனலைக் குடித்து, உடைந்த உடைப்பை அடைத்து அதில் அவுணரது குருதி நிறைத்து விளையாடும்,16. சிறகுகளுடன் மலைகள் பறக்கின்றது என கண்டவர்கள் கூறுமளவிற்கு விண்ணில் வேகமுடன் அதிர்ச்சி காட்டி ஓடும்,17. போர்க்களத்தில் எதிர்த்த அவுணர்களின் தலைகளை அறுத்து, பற்களை கடித்து, கண்ணை உருட்டி, வீறிட்டு அலற அவைகளை மோதும்... என்றெல்லாம் அறக்கருணை (நல்லவர்க்கு நன்மை செய்வது) மறக்கருணை (தீயவருக்கு இடர் கொடுத்து நல்வழி படுத்தி நன்மை செய்வது) இரண்டும் செய்யும் வேலாயுதத்தின் தெய்வீகத் தன்மையைப் பாடுகிறார் நம் ஞான சித்தர் அருணகிரிநாதர்.\n\n',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ]),
                  textAlign: TextAlign.justify,
                ),
              ),
              CustomButton(
                buttonText: 'பாடல் அட்டவணை',
                buttonColor: Colors.green,
                fontColor: Colors.white,
                buttonWidth: 0.60.sw,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Meaning()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Explanation extends StatefulWidget {
  const Explanation({super.key});
  @override
  State<Explanation> createState() => _ExplanationState();
}

class _ExplanationState extends State<Explanation> {
  late AudioPlayerHandler _tamilAudioHandler;
  Timer? _timer;
  int _elapsedTime = 0;

  // Define the intervals (in seconds) and the corresponding pages to open
  final Map<int, Widget> _pageIntervals = {
    94: const M16(),
    112: const M1(),
    124: const M2(),
    142: const M3(),
    163: const M4(),
    178: const M5(),
    193: const M6(),
    208: const M7(),
    220: const M8(),
    230: const M9(),
    244: const M10(),
    263: const M11(),
    277: const M12(),
    288: const M13(),
    302: const M14(),
    320: const M15(),
    333: const M16()
  };

  @override
  void initState() {
    super.initState();

    _tamilAudioHandler = AudioPlayerHandler(
      filePath: 'music/vel_maaral_explained.mp3',
      durationInSeconds: 353,
      onStateChanged: _updateUI,
    );
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _elapsedTime++;
      });

      // Check if there's a page to navigate to at this interval
      if (_pageIntervals.containsKey(_elapsedTime)) {
        _navigateToPage(_pageIntervals[_elapsedTime]!);
      }

      // Navigate back to the Explanation page after the audio finishes
      if (_elapsedTime >= 351) {
        _timer?.cancel();
        _returnToExplanationPage();
      }
    });
  }

  void _navigateToPage(Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    ).then((_) {
      // Resume the timer when returning to this page
      if (_elapsedTime < 351) {
        _startTimer();
      }
    });
  }

  void _returnToExplanationPage() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const Explanation()),
      (route) => false, // Clears the navigation stack
    );
  }

  void _updateUI() {
    setState(() {});
  }

  void _tamil() {
    Future.delayed(const Duration(seconds: 1), () {
      if (!_tamilAudioHandler.isPlaying) {
        _tamilAudioHandler.playAudio();
      }
    });
  }

  @override
  void dispose() {
    _tamilAudioHandler.stopAudio();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5EF),
      body: Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 0.03.sh,
                ),
                Text(
                  'வேல் வகுப்பு - பாடல்கள் பதவுரை',
                  style: TextStyle(
                    fontFamily: 'meera',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 128, 0, 32),
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 0.008.sh,
                ),
                Text(
                  '(ஒலி வடிவில்)',
                  style: TextStyle(
                    fontFamily: 'meera',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 128, 0, 32),
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 0.02.sh,
                ),
                Container(
                  width: 0.95.sw,
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.brown, width: 2.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(children: [
                    Text(
                      'எழும்போதும் வேலும் மயிலும் என்பேன்\n'
                      'எழுந்தே மகிழ்ந்து தொழும்போதும்\n'
                      'வேலும் மயிலும் என்பேன்\n'
                      'தொழுதே உருகி அழும்போதும்\n'
                      'வேலும் மயிலும் என்பேன்\n'
                      'அடியேன் உடலம் விழும்போதும்\n'
                      'வேலும் மயிலும் என்பேன்\n'
                      'செந்தில் வேலவனே\n'
                      '- ஸ்ரீமத் பாம்பன் சுவாமிகள் திருவாக்கு',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.blue.shade800,
                        fontFamily: 'meera',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ]),
                ),
                SizedBox(
                  height: 0.01.sh,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  SizedBox(
                    width: 0.2.sw,
                    height: 0.2.sw,
                    child: Image.asset(
                      'assets/images/dr_jayabalan_valliappan_malaysia.webp',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'பதவுரை வழங்கியவர்:',
                            style: TextStyle(
                              fontSize: 11.sp,
                              fontFamily: 'meera',
                              color: Colors.brown,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'மருத்துவர். ஜெயபாலன் வள்ளியப்பன்',
                            style: TextStyle(
                              color: Colors.deepPurple,
                              fontFamily: 'meera',
                              fontSize: 11.sp,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'மகப்பேறியல் நிபுணர்',
                            style: TextStyle(
                              color: Colors.deepPurple,
                              fontFamily: 'meera',
                              fontSize: 11.sp,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'தலைவர், அருணகிரிநாதர் மன்றம்',
                            style: TextStyle(
                              color: Colors.brown,
                              fontFamily: 'meera',
                              fontSize: 11.sp,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'ஈப்போ, மலேசியா',
                            style: TextStyle(
                              color: Colors.brown,
                              fontFamily: 'meera',
                              fontSize: 11.sp,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ]),
                  ),
                ]),
                SizedBox(
                  height: 0.01.sh,
                ),
                Container(
                  width: 0.95.sw,
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.brown, width: 2.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(children: [
                    SizedBox(
                      height: 0.01.sh,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              GestureDetector(
                                  onTap: !_tamilAudioHandler.isPlaying
                                      ? () {
                                          _tamil();
                                          _startTimer();
                                          setState(() {});
                                        }
                                      : null,
                                  child: Container(
                                      padding: const EdgeInsets.all(
                                          1.0), // Minimum gap around the icon
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.blue,
                                            width: 2.0), // Border properties
                                        borderRadius: BorderRadius.circular(
                                            6.0), // Optional: Rounded corners
                                      ),
                                      child: Icon(
                                        Icons.volume_up_rounded,
                                        color: !_tamilAudioHandler.isPlaying
                                            ? Colors.green
                                            : Colors.grey.shade400,
                                        size: 35.0,
                                      ))),
                              Text(
                                '5:49',
                                style: TextStyle(
                                  color: Colors.brown,
                                  fontFamily: 'arial',
                                  fontSize: 12.0.sp,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none,
                                ),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                          SizedBox(
                            width: 0.7.sw,
                            child: RichText(
                              text: TextSpan(
                                  text:
                                      'இடப்புறமுள்ள பொத்தானைத் தட்டியதும் மருத்துவர் ஜெயபாலன் அய்யா அவர்கள் குரலில்  ஒலி வடிவப் பதவுரை தொடங்கி, அதற்கு உரிய வரி வடிவ பதவுரையும் உடன் தோன்றும்.\n\n',
                                  style: TextStyle(
                                    color: Colors.brown,
                                    fontFamily: 'meera',
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.none,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text:
                                          'எல்லாப் பதவுரைகளும் முடிந்து, இறுதியில் இந்தத் திரை மீண்டும் தானாகத் தோன்றும் வரை எந்தப் பொத்தனையும் அழுத்தாமல் கேட்கவும்.\n',
                                      style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontFamily: 'meera',
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                  ]),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ]),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 2, 10, 2),
                      child: RichText(
                        text: TextSpan(
                          text:
                              'குறிப்பு: மீண்டும் வரி வடிவ பதவுரை பகுதிக்குச் சென்று, ஒவ்வொரு பாடலுக்கும் பதவுரையை ஆழ்ந்து படித்து, பதங்களின் பொருளை நன்கு உணர்ந்து, பிறகு பாராயணம் செய்யத் தொடங்கவும்.',
                          style: TextStyle(
                            color: Colors.brown,
                            fontFamily: 'meera',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Text(
                      'முருகா சரணம்',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontFamily: 'kavivanar',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ]),
                ),
                SizedBox(
                  height: 0.01.sh,
                ),
                CustomButton(
                  buttonText: 'முகப்பு',
                  buttonColor: Colors.green,
                  fontColor: Colors.white,
                  buttonWidth: 0.30.sw,
                  onPressed: () {
                    _timer?.cancel();
                    _tamilAudioHandler.stopAudio();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Choice()),
                    );
                  },
                ),
                SizedBox(
                  height: 0.03.sh,
                ),
              ]),
        ),
      ),
    );
  }
}
