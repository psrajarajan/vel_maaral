import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:vel_maaral/custom_text.dart';
import 'package:vel_maaral/thiruththaniyil.dart';

class Chakkaram extends StatefulWidget {
  const Chakkaram({super.key});
  @override
  State<Chakkaram> createState() => _ChakkaramState();
}

class _ChakkaramState extends State<Chakkaram> with TickerProviderStateMixin {
  final AudioPlayer _cPlayer = AudioPlayer();
  bool _cStarted = true;

  bool _c1 = false;
  bool _c2 = false;

  bool _isEnabled = false;
  int _isSlogan = 0;
  bool _canPop = true;

  _linesAppear() {
    if (_isEnabled && _isSlogan < 64) {
      setState(() {
        _c1 = false;
        _c2 = false;
        _isSlogan = _isSlogan + 1;
        _isEnabled = false;
        if (_isSlogan == 1) {
          _canPop = false;
        }
      });

      Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          _c1 = true;
        });
        if ((_isSlogan == 2) ||
            (_isSlogan == 32) ||
            (_isSlogan == 35) ||
            (_isSlogan == 61)) {
          _chakkarambellRing();
        }
        Future.delayed(const Duration(seconds: 6), () {
          _chakkarambellRing();

          setState(() {
            _c2 = true;
          });
        });
        Future.delayed(const Duration(milliseconds: 11700), () {
          setState(() {
            _isEnabled = true;
          });
        });
      });
    }
  }

  _chakkarambellRing() async {
    if (_cStarted) {
      await _cPlayer
          .play(AssetSource('music/vallimalai_koil_abisheka_mani_osai.mp3'));
      await Future.delayed(const Duration(seconds: 3), () {
        setState(() {
          _cPlayer.stop();
        });
      });
    }
  }

  List<Map<String, dynamic>> widgetConfigs = [
    {
      'minSlogan': 0,
      'maxSlogan': 2,
      'c1Text': '01',
      'c1Widget': const Ch1(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 1,
      'maxSlogan': 3,
      'c1Text': '02',
      'c1Widget': const Ch16(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 2,
      'maxSlogan': 4,
      'c1Text': '03',
      'c1Widget': const Ch8(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 3,
      'maxSlogan': 5,
      'c1Text': '04',
      'c1Widget': const Ch9(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 4,
      'maxSlogan': 6,
      'c1Text': '05',
      'c1Widget': const Ch2(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 5,
      'maxSlogan': 7,
      'c1Text': '06',
      'c1Widget': const Ch15(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 6,
      'maxSlogan': 8,
      'c1Text': '07',
      'c1Widget': const Ch7(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 7,
      'maxSlogan': 9,
      'c1Text': '08',
      'c1Widget': const Ch10(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 8,
      'maxSlogan': 10,
      'c1Text': '09',
      'c1Widget': const Ch3(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 9,
      'maxSlogan': 11,
      'c1Text': '10',
      'c1Widget': const Ch14(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 10,
      'maxSlogan': 12,
      'c1Text': '11',
      'c1Widget': const Ch6(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 11,
      'maxSlogan': 13,
      'c1Text': '12',
      'c1Widget': const Ch11(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 12,
      'maxSlogan': 14,
      'c1Text': '13',
      'c1Widget': const Ch4(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 13,
      'maxSlogan': 15,
      'c1Text': '14',
      'c1Widget': const Ch13(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 14,
      'maxSlogan': 16,
      'c1Text': '15',
      'c1Widget': const Ch5(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 15,
      'maxSlogan': 17,
      'c1Text': '16',
      'c1Widget': const Ch12(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 16,
      'maxSlogan': 18,
      'c1Text': '17',
      'c1Widget': const Ch5(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 17,
      'maxSlogan': 19,
      'c1Text': '18',
      'c1Widget': const Ch12(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 18,
      'maxSlogan': 20,
      'c1Text': '19',
      'c1Widget': const Ch4(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 19,
      'maxSlogan': 21,
      'c1Text': '20',
      'c1Widget': const Ch13(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 20,
      'maxSlogan': 22,
      'c1Text': '21',
      'c1Widget': const Ch6(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 21,
      'maxSlogan': 23,
      'c1Text': '22',
      'c1Widget': const Ch11(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 22,
      'maxSlogan': 24,
      'c1Text': '23',
      'c1Widget': const Ch3(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 23,
      'maxSlogan': 25,
      'c1Text': '24',
      'c1Widget': const Ch14(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 24,
      'maxSlogan': 26,
      'c1Text': '25',
      'c1Widget': const Ch7(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 25,
      'maxSlogan': 27,
      'c1Text': '26',
      'c1Widget': const Ch10(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 26,
      'maxSlogan': 28,
      'c1Text': '27',
      'c1Widget': const Ch2(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 27,
      'maxSlogan': 29,
      'c1Text': '28',
      'c1Widget': const Ch15(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 28,
      'maxSlogan': 30,
      'c1Text': '29',
      'c1Widget': const Ch8(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 29,
      'maxSlogan': 31,
      'c1Text': '30',
      'c1Widget': const Ch9(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 30,
      'maxSlogan': 32,
      'c1Text': '31',
      'c1Widget': const Ch1(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 31,
      'maxSlogan': 33,
      'c1Text': '32',
      'c1Widget': const Ch16(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 32,
      'maxSlogan': 34,
      'c1Text': '33',
      'c1Widget': const Ch9(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 33,
      'maxSlogan': 35,
      'c1Text': '34',
      'c1Widget': const Ch8(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 34,
      'maxSlogan': 36,
      'c1Text': '35',
      'c1Widget': const Ch16(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 35,
      'maxSlogan': 37,
      'c1Text': '36',
      'c1Widget': const Ch1(),
      'c2Text': '2',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 36,
      'maxSlogan': 38,
      'c1Text': '37',
      'c1Widget': const Ch10(),
      'c2Text': '2',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 37,
      'maxSlogan': 39,
      'c1Text': '38',
      'c1Widget': const Ch7(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 38,
      'maxSlogan': 40,
      'c1Text': '39',
      'c1Widget': const Ch15(),
      'c2Text': '2',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 39,
      'maxSlogan': 41,
      'c1Text': '40',
      'c1Widget': const Ch2(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 40,
      'maxSlogan': 42,
      'c1Text': '41',
      'c1Widget': const Ch11(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 41,
      'maxSlogan': 43,
      'c1Text': '42',
      'c1Widget': const Ch6(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 42,
      'maxSlogan': 44,
      'c1Text': '43',
      'c1Widget': const Ch14(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 43,
      'maxSlogan': 45,
      'c1Text': '44',
      'c1Widget': const Ch3(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 44,
      'maxSlogan': 46,
      'c1Text': '45',
      'c1Widget': const Ch12(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 45,
      'maxSlogan': 47,
      'c1Text': '46',
      'c1Widget': const Ch5(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 46,
      'maxSlogan': 48,
      'c1Text': '47',
      'c1Widget': const Ch13(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 47,
      'maxSlogan': 49,
      'c1Text': '48',
      'c1Widget': const Ch4(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 48,
      'maxSlogan': 50,
      'c1Text': '49',
      'c1Widget': const Ch13(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 49,
      'maxSlogan': 51,
      'c1Text': '50',
      'c1Widget': const Ch4(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 50,
      'maxSlogan': 52,
      'c1Text': '51',
      'c1Widget': const Ch12(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 51,
      'maxSlogan': 53,
      'c1Text': '52',
      'c1Widget': const Ch5(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 52,
      'maxSlogan': 54,
      'c1Text': '53',
      'c1Widget': const Ch14(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 53,
      'maxSlogan': 55,
      'c1Text': '54',
      'c1Widget': const Ch3(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 54,
      'maxSlogan': 56,
      'c1Text': '55',
      'c1Widget': const Ch11(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 55,
      'maxSlogan': 57,
      'c1Text': '56',
      'c1Widget': const Ch6(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 56,
      'maxSlogan': 58,
      'c1Text': '57',
      'c1Widget': const Ch15(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 57,
      'maxSlogan': 59,
      'c1Text': '58',
      'c1Widget': const Ch2(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 58,
      'maxSlogan': 60,
      'c1Text': '59',
      'c1Widget': const Ch10(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 59,
      'maxSlogan': 61,
      'c1Text': '60',
      'c1Widget': const Ch7(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 60,
      'maxSlogan': 62,
      'c1Text': '61',
      'c1Widget': const Ch16(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 61,
      'maxSlogan': 63,
      'c1Text': '62',
      'c1Widget': const Ch1(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 62,
      'maxSlogan': 64,
      'c1Text': '63',
      'c1Widget': const Ch9(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
    {
      'minSlogan': 63,
      'maxSlogan': 65,
      'c1Text': '64',
      'c1Widget': const Ch8(),
      'c2Text': '02',
      'c2Widget': const Ch16(),
    },
  ];

  @override
  void initState() {
    _isEnabled = true;
    _canPop = true;
    super.initState();
  }

  Route _createRoute() {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) =>
          const ThiruththaniyilSecond(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // Animation for the curl effect
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
  void dispose() {
    _cPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: _canPop,
      child: Scaffold(
        backgroundColor: Colors.lightGreen.shade50, // const Color(0xFFF5F5F5),
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            padding:
                EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    width: 0.95.sw,
                    child: GestureDetector(
                      onDoubleTap: (_isEnabled)
                          ? () {
                              _isSlogan = 63;
                            }
                          : null,
                      child: Image.asset(
                        'assets/images/thiruthani_vel.webp', // Replace with your image asset
                        height: 0.1.sh,
                        fit: BoxFit.contain,
                        // Width of the image
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0.01.sh,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // Align the content centrally
                    children: [
                      Stack(
                        children: widgetConfigs.map((config) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment
                                .center, // Ensure both rows are centered
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment
                                    .center, // Align vertically in the middle
                                children: [
                                  // Use SizedBox to avoid empty space affecting layout
                                  // Add spacing between text and widget
                                  (_isSlogan > config['minSlogan'] &&
                                          _isSlogan < config['maxSlogan'] &&
                                          _c1)
                                      ? config['c1Widget']
                                      : Container(height: 0.40.sh),
                                ],
                              ),
                              SizedBox(height: 0.02.sh),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // Use SizedBox to avoid text shifting
                                  // Adjust spacing between text and widget
                                  (_isSlogan > config['minSlogan'] &&
                                          _isSlogan < config['maxSlogan'] &&
                                          _c2)
                                      ? config['c2Widget']
                                      : Container(height: 0.17.sh),
                                ],
                              ),
                            ],
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0.02.sh,
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            TextButton(
                              onPressed: (_isSlogan > 63 && _isEnabled)
                                  ? () {
                                      Navigator.of(context)
                                          .push(_createRoute())
                                          .then((_) {
                                        // Reset _canPop when returning to this screen
                                        setState(() {
                                          _canPop =
                                              true; // Enable back button again
                                        });
                                      });
                                    }
                                  : null,
                              style: TextButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.deepPurple,
                                  disabledForegroundColor: Colors.transparent,
                                  disabledBackgroundColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0)),
                                  textStyle: TextStyle(
                                    fontFamily: 'meera',
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.none,
                                    fontSize: 14.sp,
                                  )),
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                                child: Text('திருத்தணியில் (20)',
                                    style: TextStyle(
                                        decoration: TextDecoration.none)),
                              ),
                            ),
                            Visibility(
                              visible: !(_isSlogan > 63 && _isEnabled),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  !_cStarted
                                      ? SizedBox(
                                          width: 0.15.sw,
                                          child: IconButton(
                                            icon: const Icon(
                                                Icons.notifications,
                                                size: 40.0),
                                            onPressed: !_cStarted
                                                ? () {
                                                    setState(() {
                                                      _cStarted = true;
                                                    });
                                                  }
                                                : null,
                                          ),
                                        )
                                      : SizedBox(
                                          width: 0.15.sw,
                                        ),
                                  GestureDetector(
                                      onTap: _isSlogan < 64
                                          ? () {
                                              _linesAppear();
                                            }
                                          : null,
                                      child: Container(
                                          alignment: Alignment.center,
                                          width: 60.0,
                                          height: 60.0,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: _isEnabled
                                                ? Colors.brown.shade400
                                                : Colors.transparent,
                                          ),
                                          child: Text(_isSlogan.toString(),
                                              style: TextStyle(
                                                  fontSize: 18.0.sp,
                                                  color: _isEnabled
                                                      ? Colors.white
                                                      : Colors.deepPurple,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'arial',
                                                  decoration:
                                                      TextDecoration.none)))),
                                  _cStarted
                                      ? SizedBox(
                                          width: 0.15.sw,
                                          child: IconButton(
                                            icon: const Icon(
                                                Icons.notifications_off,
                                                size: 40.0),
                                            onPressed: _cStarted
                                                ? () {
                                                    setState(() {
                                                      _cStarted = false;
                                                    });
                                                  }
                                                : null,
                                          ),
                                        )
                                      : SizedBox(
                                          width: 0.15.sw,
                                        ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 0.01.sh,
                        ),
                      ]),
                ]),
          ),
        )),
      ),
    );
  }
}

class ChBase1 extends StatefulWidget {
  final List<String> texts;
  final Color containerColor;
  const ChBase1({super.key, required this.texts, required this.containerColor});
  @override
  State<ChBase1> createState() => _ChBase1State();
}

class _ChBase1State extends State<ChBase1> {
  bool _a1 = false;
  bool _a2 = false;
  bool _a3 = false;
  bool _a4 = false;
  bool _a5 = false;
  bool _a6 = false;
  bool _a7 = false;
  bool _a8 = false;

  void _linesAppear1() {
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _a1 = true;
      });
    });
    Future.delayed(const Duration(milliseconds: 1250), () {
      setState(() {
        _a2 = true;
      });
    });
    Future.delayed(const Duration(milliseconds: 2000), () {
      setState(() {
        _a3 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 2750), () {
      setState(() {
        _a4 = true;
      });
    });
    Future.delayed(const Duration(milliseconds: 3500), () {
      setState(() {
        _a5 = true;
      });
    });
    Future.delayed(const Duration(milliseconds: 4250), () {
      setState(() {
        _a6 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 5000), () {
      setState(() {
        _a7 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 5750), () {
      setState(() {
        _a8 = true;
      });
    });
  }

  @override
  void initState() {
    _linesAppear1();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.95.sw,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.brown, width: 2),
        borderRadius: BorderRadius.circular(8.0),
        color: widget.containerColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(widget.texts[0],
                style: TextStyle(
                  fontFamily: 'meera',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  color: _a1 ? Colors.deepPurple : Colors.black26,
                )),
            SizedBox(height: 0.005.sw),
            Text(widget.texts[1],
                style: TextStyle(
                  fontFamily: 'meera',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  color: _a2
                      ? const Color.fromARGB(255, 128, 0, 32)
                      : Colors.black26,
                )),
            SizedBox(height: 0.005.sw),
            Text(widget.texts[2],
                style: TextStyle(
                  fontFamily: 'meera',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  color: _a3
                      ? const Color.fromARGB(255, 128, 0, 32)
                      : Colors.black26,
                )),
            SizedBox(height: 0.005.sw),
            Text(widget.texts[3],
                style: TextStyle(
                  fontFamily: 'meera',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  color: _a4 ? Colors.deepPurple : Colors.black26,
                )),
            SizedBox(height: 0.005.sw),
            Text(widget.texts[4],
                style: TextStyle(
                  fontFamily: 'meera',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  color: _a5
                      ? const Color.fromARGB(255, 128, 0, 32)
                      : Colors.black26,
                )),
            SizedBox(height: 0.005.sw),
            Text(widget.texts[5],
                style: TextStyle(
                  fontFamily: 'meera',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  color: _a6 ? Colors.deepPurple : Colors.black26,
                )),
            SizedBox(height: 0.005.sw),
            Text(widget.texts[6],
                style: TextStyle(
                  fontFamily: 'meera',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  color: _a7
                      ? const Color.fromARGB(255, 128, 0, 32)
                      : Colors.black26,
                )),
            SizedBox(height: 0.005.sw),
            Text(widget.texts[7],
                style: TextStyle(
                  fontFamily: 'meera',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  color: _a8 ? Colors.deepPurple : Colors.black26,
                )),
          ],
        ),
      ),
    );
  }
}

class ChBase2 extends StatefulWidget {
  final List<String> texts;
  final Color containerColor;
  const ChBase2({super.key, required this.texts, required this.containerColor});
  @override
  State<ChBase2> createState() => _ChBase2State();
}

class _ChBase2State extends State<ChBase2> {
  bool _a1 = false;
  bool _a2 = false;
  bool _a3 = false;
  bool _a4 = false;
  bool _a5 = false;
  bool _a6 = false;
  bool _a7 = false;
  bool _a8 = false;

  void _linesAppear2() {
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _a1 = true;
      });
    });
    Future.delayed(const Duration(milliseconds: 1000), () {
      setState(() {
        _a2 = true;
      });
    });
    Future.delayed(const Duration(milliseconds: 1700), () {
      setState(() {
        _a3 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 2200), () {
      setState(() {
        _a4 = true;
      });
    });
    Future.delayed(const Duration(milliseconds: 3000), () {
      setState(() {
        _a5 = true;
      });
    });
    Future.delayed(const Duration(milliseconds: 4000), () {
      setState(() {
        _a6 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 4500), () {
      setState(() {
        _a7 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 5200), () {
      setState(() {
        _a8 = true;
      });
    });
  }

  @override
  void initState() {
    _linesAppear2();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.95.sw,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.brown, width: 2),
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.lightGreen.shade100,
      ),
      child: Column(
        children: [
          SizedBox(height: 0.01.sh),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              P2Text(
                p2Text: 'திருத்தணியில்',
                p2Color: _a1,
              ),
              SizedBox(width: 0.02.sw),
              M2Text(m2Text: 'உதித்து அருளும்', m2Color: _a2),
            ],
          ),
          SizedBox(height: 0.005.sh),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              P2Text(p2Text: 'ஒருத்தன்', p2Color: _a3),
              SizedBox(width: 0.02.sw),
              M2Text(m2Text: 'மலை விருத்தன்', m2Color: _a4),
            ],
          ),
          SizedBox(height: 0.005.sh),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              P2Text(p2Text: 'எனது உளத்தில் உறை', p2Color: _a5),
              SizedBox(width: 0.02.sw),
              M2Text(m2Text: 'கருத்தன்', m2Color: _a6),
            ],
          ),
          SizedBox(height: 0.005.sh),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              P2Text(p2Text: 'மயில் நடத்து குகன்', p2Color: _a7),
              SizedBox(width: 0.02.sw),
              M2Text(m2Text: 'வேலே', m2Color: _a8),
            ],
          ),
          SizedBox(height: 0.01.sh),
        ],
      ),
    );
  }
}

class Ch1 extends StatelessWidget {
  const Ch1({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChBase1(
      texts: [
        'பருத்த முலை',
        'சிறுத்த இடை',
        'வெளுத்த நகை',
        'கருத்த குழல்',
        'சிவத்த இதழ்',
        'மறச் சிறுமி',
        'விழிக்கு நிகர்',
        'ஆகும் ...'
      ],
      containerColor: Color.fromARGB(255, 220, 237, 200),
    );
  }
}

class Ch2 extends StatelessWidget {
  const Ch2({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChBase1(
      texts: [
        'பனைக்கை',
        'முக பட',
        'கரட மதத்',
        'தவள கஜக்கடவுள்',
        'பதத்து இடும்',
        'நிகளத்து முளை',
        'தெறிக்க அரம்',
        'ஆகும் ...'
      ],
      containerColor: Color.fromARGB(255, 220, 237, 200),
    );
  }
}

class Ch3 extends StatelessWidget {
  const Ch3({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChBase1(
      texts: [
        'பழுத்த',
        'முது தமிழ்ப் பலகை',
        'இருக்கும்',
        'ஒரு கவிப்புலவன்',
        'இசைக்கு உருகி',
        'வரை குகையை',
        'இடித்து வழி',
        'காணும் ...'
      ],
      containerColor: Color.fromARGB(255, 220, 237, 200),
    );
  }
}

class Ch4 extends StatelessWidget {
  const Ch4({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChBase1(
      texts: [
        'பசித்து',
        'அலகை',
        'முசித்து அழுது',
        'முறைப்படுதல் ஒழித்து',
        'அவுணர் உரத்து உதிர',
        'நிணத்தசைகள்',
        'புசிக்க',
        'அருள் நேரும் ...'
      ],
      containerColor: Color.fromARGB(255, 220, 237, 200),
    );
  }
}

class Ch5 extends StatelessWidget {
  const Ch5({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChBase1(
      texts: [
        'சுரர்க்கும்',
        'முனிவரர்க்கும்',
        'மக பதிக்கும்',
        'விதி  தனக்கும்',
        'அரி தனக்கும்',
        'நரர் தமக்கும்',
        'உறும்  இடுக்கண் வினை',
        'சாடும் ...'
      ],
      containerColor: Color.fromARGB(255, 220, 237, 200),
    );
  }
}

class Ch6 extends StatelessWidget {
  const Ch6({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChBase1(
      texts: [
        'சுடர்ப் பரிதி ஒளிப்ப',
        'நிலவு ஒழுக்கும்',
        'மதி ஒளிப்ப',
        'அலை அடக்கு',
        'தழல் ஒளிப்ப',
        'ஒளிர்',
        'ஒளிப்பிரபை',
        'வீசும் ...'
      ],
      containerColor: Color.fromARGB(255, 220, 237, 200),
    );
  }
}

class Ch7 extends StatelessWidget {
  const Ch7({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChBase1(
      texts: [
        'துதிக்கும் அடியவர்க்கு',
        'ஒருவர்',
        'கெடுக்க',
        'இடர் நினைக்கின்',
        'அவர் குலத்தை',
        'முதல் அறக்களையும்',
        'எனக்கு ஒரு துணை',
        'ஆகும் ...'
      ],
      containerColor: Color.fromARGB(255, 220, 237, 200),
    );
  }
}

class Ch8 extends StatelessWidget {
  const Ch8({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChBase1(
      texts: [
        'சொலற்கு அரிய',
        'திருப்புகழை',
        'உரைத்தவரை',
        'அடுத்த பகை',
        'அறுத்து எறிய',
        'உறுக்கி எழும்',
        'அறத்தை',
        'நிலை காணும் ...'
      ],
      containerColor: Color.fromARGB(255, 220, 237, 200),
    );
  }
}

class Ch9 extends StatelessWidget {
  const Ch9({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChBase1(
      texts: [
        'தருக்கி நமன்',
        'முருக்க வரின்',
        'எருக்கு மதி தரித்த',
        'முடி படைத்த',
        'விறல் படைத்த இறை',
        'கழற்கு',
        'நிகர்',
        'ஆகும் ...'
      ],
      containerColor: Color.fromARGB(255, 220, 237, 200),
    );
  }
}

class Ch10 extends StatelessWidget {
  const Ch10({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChBase1(
      texts: [
        'தலத்தில் உள',
        'கணத்தொகுதி',
        'களிப்பின்',
        'உணவழைப்பது என',
        'மலர்க் கமல கரத்தின்',
        'முனை விதிர்க்க',
        'வளைவு',
        'ஆகும் ...'
      ],
      containerColor: Color.fromARGB(255, 220, 237, 200),
    );
  }
}

class Ch11 extends StatelessWidget {
  const Ch11({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChBase1(
      texts: [
        'தனித்து வழி',
        'நடக்கும்',
        'எனது இடத்தும்',
        'ஒரு வலத்தும்',
        'இரு புறத்தும்',
        'அருகு அடுத்து',
        'இரவு பகல்',
        'துணை அது ஆகும் ...'
      ],
      containerColor: Color.fromARGB(255, 220, 237, 200),
    );
  }
}

class Ch12 extends StatelessWidget {
  const Ch12({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChBase1(
      texts: [
        'சலத்து வரும்',
        'அரக்கர் உடல்',
        'கொழுத்து வளர்',
        'பெருத்த குடல்',
        'சிவத்த தொடை',
        'எனச் சிகையில்',
        'விருப்பமொடு',
        'சூடும் ...'
      ],
      containerColor: Color.fromARGB(255, 220, 237, 200),
    );
  }
}

class Ch13 extends StatelessWidget {
  const Ch13({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChBase1(
      texts: [
        'திரைக் கடலை',
        'உடைத்து',
        'நிறை புனல்',
        'கடிது குடித்து',
        'உடையும் உடைப்பு',
        'அடைய அடைத்து',
        'உதிரம் நிறைத்து',
        'விளையாடும் ...',
      ],
      containerColor: Color.fromARGB(255, 220, 237, 200),
    );
  }
}

class Ch14 extends StatelessWidget {
  const Ch14({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChBase1(
      texts: [
        'திசைக்கிரியை',
        'முதற் குலிசன்',
        'அறுத்த சிறை',
        'முளைத்தது என',
        'முகட்டினிடை பறக்க',
        'அற விசைத்து',
        'அதிர',
        'ஓடும் ...'
      ],
      containerColor: Color.fromARGB(255, 220, 237, 200),
    );
  }
}

class Ch15 extends StatelessWidget {
  const Ch15({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChBase1(
      texts: [
        'சினத்து அவுணர்',
        'எதிர்த்த',
        'ரண களத்தில்',
        'வெகு குறைத்தலைகள்',
        'சிரித்து',
        'எயிறு கடித்து',
        'விழி விழித்து',
        'அலற மோதும் ...'
      ],
      containerColor: Color.fromARGB(255, 220, 237, 200),
    );
  }
}

class Ch16 extends StatelessWidget {
  const Ch16({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChBase2(
      texts: [
        'திருத்தணியில்',
        'உதித்து அருளும்',
        'ஒருத்தன்',
        'மலை விருத்தன்',
        'எனது உளத்தில் உறை',
        'கருத்தன்',
        'மயில் நடத்து குகன்',
        'வேலே'
      ],
      containerColor: Color.fromARGB(255, 179, 229, 252),
    );
  }
}
