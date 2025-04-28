import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:vel_maaral/chakkaram.dart';
import 'package:vel_maaral/custom_button.dart';
import 'package:vel_maaral/custom_text.dart';
import 'package:vel_maaral/parayanam.dart';

class ThiruththaniyilFirst extends StatefulWidget {
  const ThiruththaniyilFirst({super.key});
  @override
  State<ThiruththaniyilFirst> createState() => _ThiruththaniyilFirstState();
}

class _ThiruththaniyilFirstState extends State<ThiruththaniyilFirst>
    with TickerProviderStateMixin {
  final AudioPlayer _tPlayer = AudioPlayer();
  bool _tStarted = true;
  bool _u1 = false;
  bool _u2 = false;
  bool _u3 = false;
  bool _u4 = false;
  bool _u5 = false;
  bool _u6 = false;
  bool _u7 = false;
  bool _u8 = false;
  int _uSlogan = 0;
  bool _uEnabled = true;
  bool _parayanamContinue = false;
  bool _canPop = true;

  void _ulinesAppear() {
    if (_uEnabled) {
      setState(() {
        _u1 = false;
        _u2 = false;
        _u3 = false;
        _u4 = false;
        _u5 = false;
        _u6 = false;
        _u7 = false;
        _u8 = false;
        _uEnabled = false;
        _parayanamContinue = false;

        Future.delayed(const Duration(milliseconds: 200), () {
          if (_u1 == false) {
            setState(() {
              _u1 = true;
              _uSlogan = _uSlogan + 1;
              if (_uSlogan == 1) {
                _canPop = false;
              }
              if (_uSlogan > 19) {
                // Start the delayed countdown when _uCompleted becomes true.
                Future.delayed(const Duration(milliseconds: 5000), () {
                  setState(() {
                    _parayanamContinue = true;
                    _uEnabled = false;
                  });
                });
              }
            });
          }
        });

        Future.delayed(const Duration(milliseconds: 1000), () {
          setState(() {
            _u2 = true;
          });
        });

        Future.delayed(const Duration(milliseconds: 1700), () {
          setState(() {
            _u3 = true;
          });
        });

        Future.delayed(const Duration(milliseconds: 2200), () {
          setState(() {
            _u4 = true;
          });
        });
        Future.delayed(const Duration(milliseconds: 3000), () {
          setState(() {
            _u5 = true;
          });
        });
        Future.delayed(const Duration(milliseconds: 4000), () {
          setState(() {
            _u6 = true;
          });
        });

        Future.delayed(const Duration(milliseconds: 4500), () {
          setState(() {
            _u7 = true;
          });
        });

        Future.delayed(const Duration(milliseconds: 5200), () {
          setState(() {
            _u8 = true;
            _uEnabled = true;
          });
        });
      });
    }
  }

  _templebellRing() async {
    if (_tStarted) {
      await _tPlayer
          .play(AssetSource('music/vallimalai_koil_abisheka_mani_osai.mp3'));
      await Future.delayed(const Duration(seconds: 3), () {
        setState(() {
          _tPlayer.stop();
        });
      });
    }
  }

  Route _createRoute() {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) =>
          const Chakkaram(),
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
    _canPop = true;
    super.initState();
  }

  @override
  void dispose() {
    _tPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: _canPop,
      child: Scaffold(
        backgroundColor: Colors.lightGreen.shade50,
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(height: 0.02.sh),
                GestureDetector(
                  onDoubleTap: (_u7)
                      ? () {
                          _uSlogan = 19;
                        }
                      : null,
                  child: SizedBox(
                    height: 0.25.sh,
                    width: 0.95.sw,
                    child: Image.asset(
                      'assets/images/thiruththani_temple.webp',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.15.sh,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Visibility(
                        visible: _u1 & !_u2,
                        child: Image.asset(
                          'assets/images/velum_mayilum.webp',
                          fit: BoxFit.contain,
                        ),
                      ),
                      Visibility(
                        visible: _u2 & !_u3,
                        child: Image.asset(
                          'assets/images/velum_mayilum.webp',
                          fit: BoxFit.contain,
                        ),
                      ),
                      Visibility(
                        visible: _u3 & !_u4,
                        child: Image.asset(
                          'assets/images/velum_mayilum.webp',
                          fit: BoxFit.contain,
                        ),
                      ),
                      Visibility(
                        visible: _u4 & !_u5,
                        child: Image.asset(
                          'assets/images/velum_mayilum.webp',
                          fit: BoxFit.contain,
                        ),
                      ),
                      Visibility(
                        visible: _u5 & !_u6,
                        child: Image.asset(
                          'assets/images/velum_mayilum.webp',
                          fit: BoxFit.contain,
                        ),
                      ),
                      Visibility(
                        visible: _u6 & !_u7,
                        child: Image.asset(
                          'assets/images/velum_mayilum.webp',
                          fit: BoxFit.contain,
                        ),
                      ),
                      Visibility(
                        visible: _u7 & !_u8,
                        child: Image.asset(
                          'assets/images/velum_mayilum.webp',
                          fit: BoxFit.contain,
                        ),
                      ),
                      Visibility(
                        visible: _u8,
                        child: Image.asset(
                          'assets/images/velum_mayilum.webp',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 0.95.sw,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.brown, width: 2),
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.lightGreen.shade100,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      children: [
                        SizedBox(height: 0.01.sh),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            P2Text(
                              p2Text: 'திருத்தணியில்',
                              p2Color: _u1,
                            ),
                            SizedBox(width: 0.02.sw),
                            M2Text(m2Text: 'உதித்து அருளும்', m2Color: _u2),
                          ],
                        ),
                        SizedBox(height: 0.005.sh),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            P2Text(p2Text: 'ஒருத்தன்', p2Color: _u3),
                            SizedBox(width: 0.02.sw),
                            M2Text(m2Text: 'மலை விருத்தன்', m2Color: _u4),
                          ],
                        ),
                        SizedBox(height: 0.005.sh),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            P2Text(p2Text: 'எனது உளத்தில் உறை', p2Color: _u5),
                            SizedBox(width: 0.02.sw),
                            M2Text(m2Text: 'கருத்தன்', m2Color: _u6),
                          ],
                        ),
                        SizedBox(height: 0.005.sh),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            P2Text(p2Text: 'மயில் நடத்து குகன்', p2Color: _u7),
                            SizedBox(width: 0.02.sw),
                            M2Text(m2Text: 'வேலே', m2Color: _u8),
                          ],
                        ),
                        SizedBox(height: 0.01.sh),
                      ],
                    ),
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      !_tStarted
                          ? SizedBox(
                              width: 0.15.sw,
                              child: IconButton(
                                icon:
                                    const Icon(Icons.notifications, size: 40.0),
                                onPressed: !_tStarted
                                    ? () {
                                        setState(() {
                                          _tStarted = true;
                                        });
                                      }
                                    : null,
                              ),
                            )
                          : SizedBox(
                              width: 0.15.sw,
                            ),
                      GestureDetector(
                          onTap: (_uEnabled && _uSlogan < 20)
                              ? () {
                                  _ulinesAppear();
                                  _templebellRing();
                                }
                              : null,
                          child: Container(
                              alignment: Alignment.center,
                              width: 60.0,
                              height: 60.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: (_uEnabled && _uSlogan < 20)
                                    ? Colors.brown.shade400
                                    : Colors.transparent,
                              ),
                              child: Text(_uSlogan.toString(),
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      color: (_uEnabled && _uSlogan < 20)
                                          ? Colors.white70
                                          : Colors.deepPurple,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'arial',
                                      decoration: TextDecoration.none)))),
                      _tStarted
                          ? SizedBox(
                              width: 0.15.sw,
                              child: IconButton(
                                icon: const Icon(Icons.notifications_off,
                                    size: 40.0),
                                onPressed: _tStarted
                                    ? () {
                                        setState(() {
                                          _tStarted = false;
                                        });
                                      }
                                    : null,
                              ),
                            )
                          : SizedBox(width: 0.15.sw),
                    ]),
                _parayanamContinue
                    ? CustomButton(
                        buttonText: 'பாராயணம் தொடர',
                        buttonColor: Colors.deepPurple,
                        fontColor: Colors.white,
                        buttonWidth: 0.55.sw,
                        onPressed: () {
                          Navigator.of(context).push(_createRoute()).then((_) {
                            // Reset _canPop when returning to this screen
                            setState(() {
                              _canPop = true; // Enable back button again
                            });
                          });
                        })
                    : SizedBox(
                        height: 0.04.sh,
                      ),
                SizedBox(height: 0.02.sh),
              ]),
        ),
      ),
    );
  }
}

class ThiruththaniyilSecond extends StatefulWidget {
  const ThiruththaniyilSecond({super.key});
  @override
  State<ThiruththaniyilSecond> createState() => _ThiruththaniyilSecondState();
}

class _ThiruththaniyilSecondState extends State<ThiruththaniyilSecond>
    with TickerProviderStateMixin {
  final AudioPlayer _xPlayer = AudioPlayer();
  bool _xStarted = true;
  bool _x1 = false;
  bool _x2 = false;
  bool _x3 = false;
  bool _x4 = false;
  bool _x5 = false;
  bool _x6 = false;
  bool _x7 = false;
  bool _x8 = false;
  bool _y1 = false;
  bool _y2 = false;
  bool _y3 = false;
  bool _y4 = false;
  bool _y5 = false;
  bool _y6 = false;
  bool _vmStart = false;
  bool _parayanamNiraivu = false;
  bool _xEnabled = true;
  int _xSlogan = 0;
  bool _canPop = true;

  _xlinesAppear() {
    if (_xEnabled) {
      setState(() {
        _x1 = false;
        _x2 = false;
        _x3 = false;
        _x4 = false;
        _x5 = false;
        _x6 = false;
        _x7 = false;
        _x8 = false;
        _xEnabled = false;

        _vmStart = false;
      });

      Future.delayed(const Duration(milliseconds: 200), () {
        if (_x1 == false) {
          setState(() {
            _x1 = true;
            _xSlogan = _xSlogan + 1;
            if (_xSlogan == 1) {
              _canPop = false;
            }
            if (_xSlogan > 19) {
              // Start the delayed countdown when _uCompleted becomes true.
              Future.delayed(const Duration(milliseconds: 7000), () {
                setState(() {
                  _vmStart = true;
                  _xEnabled = false;
                });
              });
            }
          });
        }
      });
      Future.delayed(const Duration(milliseconds: 1000), () {
        setState(() {
          _x2 = true;
        });
      });
      Future.delayed(const Duration(milliseconds: 1700), () {
        setState(() {
          _x3 = true;
        });
      });

      Future.delayed(const Duration(milliseconds: 2200), () {
        setState(() {
          _x4 = true;
        });
      });
      Future.delayed(const Duration(milliseconds: 3000), () {
        setState(() {
          _x5 = true;
        });
      });
      Future.delayed(const Duration(milliseconds: 4000), () {
        setState(() {
          _x6 = true;
        });
      });

      Future.delayed(const Duration(milliseconds: 4500), () {
        setState(() {
          _x7 = true;
        });
      });

      Future.delayed(const Duration(milliseconds: 5200), () {
        setState(() {
          _x8 = true;
          _xEnabled = true;
        });
      });
    }
  }

  void _ylinesAppear() {
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _y1 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 1500), () {
      setState(() {
        _y2 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 2500), () {
      setState(() {
        _y3 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 3500), () {
      setState(() {
        _y4 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 4500), () {
      setState(() {
        _y5 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 5500), () {
      setState(() {
        _y6 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 7000), () {
      setState(() {
        _parayanamNiraivu = true;
      });
    });
  }

  _koilbellRing() async {
    if (_xStarted) {
      await _xPlayer
          .play(AssetSource('music/vallimalai_koil_abisheka_mani_osai.mp3'));
      await Future.delayed(const Duration(seconds: 3), () {
        setState(() {
          _xPlayer.stop();
        });
      });
    }
  }

  Route _createRoute() {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) => const Vel1(),
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
    _canPop = true;
    super.initState();
  }

  @override
  void dispose() {
    _xPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: _canPop,
      child: Scaffold(
        backgroundColor: Colors.lightGreen.shade50,
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(height: 0.02.sh),
                SizedBox(
                  height: 0.25.sh,
                  width: 0.95.sw,
                  child: GestureDetector(
                    onDoubleTap: (_x7)
                        ? () {
                            _xSlogan = 19;
                          }
                        : null,
                    child: Image.asset(
                      'assets/images/thiruththani_murugar.webp',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.15.sh,
                  child: _y1
                      ? Image.asset(
                          'assets/images/thiruththani_temple.webp',
                          width: 0.95.sw,
                          fit: BoxFit.fitWidth,
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Visibility(
                              visible: _x1 & !_x2,
                              child: Image.asset(
                                'assets/images/velum_mayilum.webp',
                                fit: BoxFit.contain,
                              ),
                            ),
                            Visibility(
                              visible: _x2 & !_x3,
                              child: Image.asset(
                                'assets/images/velum_mayilum.webp',
                                fit: BoxFit.contain,
                              ),
                            ),
                            Visibility(
                              visible: _x3 & !_x4,
                              child: Image.asset(
                                'assets/images/velum_mayilum.webp',
                                fit: BoxFit.contain,
                              ),
                            ),
                            Visibility(
                              visible: _x4 & !_x5,
                              child: Image.asset(
                                'assets/images/velum_mayilum.webp',
                                fit: BoxFit.contain,
                              ),
                            ),
                            Visibility(
                              visible: _x5 & !_x6,
                              child: Image.asset(
                                'assets/images/velum_mayilum.webp',
                                fit: BoxFit.contain,
                              ),
                            ),
                            Visibility(
                              visible: _x6 & !_x7,
                              child: Image.asset(
                                'assets/images/velum_mayilum.webp',
                                fit: BoxFit.contain,
                              ),
                            ),
                            Visibility(
                              visible: _x7 & !_x8,
                              child: Image.asset(
                                'assets/images/velum_mayilum.webp',
                                fit: BoxFit.contain,
                              ),
                            ),
                            Visibility(
                              visible: _x8,
                              child: Image.asset(
                                'assets/images/velum_mayilum.webp',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                ),
                Container(
                  width: 0.95.sw,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.brown, width: 2),
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.lightGreen.shade100,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: !_y1
                        ? Column(
                            children: [
                              SizedBox(height: 0.01.sh),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  P2Text(
                                    p2Text: 'திருத்தணியில்',
                                    p2Color: _x1,
                                  ),
                                  SizedBox(width: 0.02.sw),
                                  M2Text(
                                      m2Text: 'உதித்து அருளும்', m2Color: _x2),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  P2Text(p2Text: 'ஒருத்தன்', p2Color: _x3),
                                  SizedBox(width: 0.02.sw),
                                  M2Text(m2Text: 'மலை விருத்தன்', m2Color: _x4),
                                ],
                              ),
                              SizedBox(height: 0.005.sh),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  P2Text(
                                      p2Text: 'எனது உளத்தில் உறை',
                                      p2Color: _x5),
                                  SizedBox(width: 0.02.sw),
                                  M2Text(m2Text: 'கருத்தன்', m2Color: _x6),
                                ],
                              ),
                              SizedBox(height: 0.005.sh),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  P2Text(
                                      p2Text: 'மயில் நடத்து குகன்',
                                      p2Color: _x7),
                                  SizedBox(width: 0.02.sw),
                                  M2Text(m2Text: 'வேலே', m2Color: _x8),
                                ],
                              ),
                              SizedBox(height: 0.01.sh),
                            ],
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                                _y1
                                    ? SizedBox(
                                        child: Image.asset(
                                            'assets/images/velum_mayilum.webp',
                                            width: 0.3.sw,
                                            height: 0.2.sh,
                                            fit: BoxFit.contain),
                                      )
                                    : SizedBox(
                                        width: 0.3.sw,
                                        height: 0.2.sh,
                                      ),
                                _y1
                                    ? Column(
                                        children: [
                                          P1Text(
                                              p1Text: 'வேலும் மயிலும் துணை',
                                              p1Color: _y1),
                                          M1Text(
                                              m1Text: 'வேலும் மயிலும் துணை',
                                              m1Color: _y2),
                                          P1Text(
                                              p1Text: 'வேலும் மயிலும் துணை',
                                              p1Color: _y3),
                                          M1Text(
                                              m1Text: 'வேலும் மயிலும் துணை',
                                              m1Color: _y4),
                                          P1Text(
                                              p1Text: 'வேலும் மயிலும் துணை',
                                              p1Color: _y5),
                                          M1Text(
                                              m1Text: 'வேலும் மயிலும் துணை',
                                              m1Color: _y6),
                                        ],
                                      )
                                    : SizedBox(
                                        width: 0.3.sw,
                                        height: 0.19.sh,
                                      ),
                              ]),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    !_xStarted
                        ? SizedBox(
                            width: 0.15.sw,
                            child: IconButton(
                              icon: const Icon(Icons.notifications, size: 40.0),
                              onPressed: !_xStarted
                                  ? () {
                                      setState(() {
                                        _xStarted = true;
                                      });
                                    }
                                  : null,
                            ),
                          )
                        : SizedBox(
                            width: 0.15.sw,
                          ),
                    GestureDetector(
                        onTap: (_xEnabled && _xSlogan < 20)
                            ? () {
                                _xlinesAppear();
                                _koilbellRing();
                              }
                            : null,
                        child: Container(
                            alignment: Alignment.center,
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (_xEnabled && _xSlogan < 20)
                                  ? Colors.brown.shade400
                                  : Colors.transparent,
                            ),
                            child: Text(_xSlogan.toString(),
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    color: (_xEnabled && _xSlogan < 20)
                                        ? Colors.white70
                                        : Colors.deepPurple,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'arial',
                                    decoration: TextDecoration.none)))),
                    _xStarted
                        ? SizedBox(
                            width: 0.15.sw,
                            child: IconButton(
                              icon: const Icon(Icons.notifications_off,
                                  size: 40.0),
                              onPressed: _xStarted
                                  ? () {
                                      setState(() {
                                        _xStarted = false;
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
                Column(
                  children: [
                    Stack(children: [
                      (_parayanamNiraivu & _vmStart)
                          ? CustomButton(
                              buttonText: 'வேலின் ஆற்றல்',
                              buttonColor:
                                  const Color.fromARGB(255, 128, 0, 32),
                              fontColor: Colors.white,
                              buttonWidth: 0.55.sw,
                              onPressed: () {
                                Navigator.of(context)
                                    .push(_createRoute())
                                    .then((_) {
                                  // Reset _canPop when returning to this screen
                                  setState(() {
                                    _canPop = true; // Enable back button again
                                  });
                                });
                              })
                          : SizedBox(
                              height: 0.04.sh,
                            ),
                      (_vmStart && !_parayanamNiraivu)
                          ? CustomButton(
                              buttonText: 'வேலும் மயிலும் துணை',
                              buttonColor: Colors.deepPurple,
                              fontColor: Colors.white,
                              buttonWidth: 0.55.sw,
                              onPressed: () {
                                _ylinesAppear();
                              })
                          : SizedBox(
                              height: 0.04.sh,
                            ),
                    ]),
                    SizedBox(height: 0.04.sh),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
