import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';
import 'package:vel_maaral/choice.dart';
import 'package:vel_maaral/custom_button.dart';
import 'package:vel_maaral/custom_text.dart';
import 'thiruththaniyil.dart';

class Parayanam extends StatefulWidget {
  const Parayanam({super.key});
  @override
  State<Parayanam> createState() => _ParayanamState();
}

class _ParayanamState extends State<Parayanam> {
  Route createRoute() {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) =>
          const Kulatheivam(),
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
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFFFF4),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 4, 15, 4),
          child: SingleChildScrollView(
            padding:
                EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 0.02.sh,
                  ),
                  Text(
                    'வேல் மாறல் - பாராயண முறை\n',
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
                    width: 0.95.sw,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.brown, width: 2),
                        borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        'இந்த செயலியில் கீழே உள்ள பாராயண முறை பின்பற்றப்படுகிறது',
                        style: TextStyle(
                          fontFamily: 'meera',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                          decoration: TextDecoration.none,
                          height: 1.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0.02.sh,
                  ),
                  Container(
                      width: 0.95.sw,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Table(
                          columnWidths: {
                            0: FixedColumnWidth(0.1
                                .sw), // Fixed width of 100 for the first column
                            1: const FlexColumnWidth(), // Flexible width for the second column
                          },
                          border: TableBorder.all(
                              color: const Color(0xFF000000),
                              width: 1.0,
                              style: BorderStyle.solid,
                              borderRadius: BorderRadius.circular(16.0)),
                          children: [
                            TableRow(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text('',
                                      style: TextStyle(
                                        color: Colors.transparent,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Arial',
                                        fontSize: 12.sp,
                                        decoration: TextDecoration.none,
                                      ),
                                      textAlign: TextAlign.center),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text('முதலில் குலதெய்வ வணக்கம்',
                                      style: TextStyle(
                                        color: Colors.brown.shade900,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Meera',
                                        fontSize: 12.sp,
                                        decoration: TextDecoration.none,
                                        height: 1.0,
                                      ),
                                      textAlign: TextAlign.center),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text('1',
                                      style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Arial',
                                        fontSize: 12.sp,
                                        decoration: TextDecoration.none,
                                      ),
                                      textAlign: TextAlign.center),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text(
                                      'விநாயகர் வணக்கம்: நெஞ்ச கனகல்லும்\n'
                                      'வேலும் மயிலும் துணை (6 முறை)',
                                      style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Meera',
                                        fontSize: 12.sp,
                                        decoration: TextDecoration.none,
                                        height: 1.0,
                                      ),
                                      textAlign: TextAlign.center),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text('2',
                                      style: TextStyle(
                                        color: Colors.brown.shade900,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Arial',
                                        fontSize: 12.sp,
                                        decoration: TextDecoration.none,
                                      ),
                                      textAlign: TextAlign.center),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text(
                                      'முருகர் பெருமை: விழிக்குத்துணை\n'
                                      'வேலும் மயிலும் துணை (6 முறை)',
                                      style: TextStyle(
                                        color: Colors.brown.shade900,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Meera',
                                        fontSize: 12.sp,
                                        decoration: TextDecoration.none,
                                        height: 1.0,
                                      ),
                                      textAlign: TextAlign.center),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text('3',
                                      style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Arial',
                                        fontSize: 12.sp,
                                        decoration: TextDecoration.none,
                                      ),
                                      textAlign: TextAlign.center),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text(
                                      'மயிலின் திறன்: தடக்கொற்ற\n'
                                      'வேலும் மயிலும் துணை (6 முறை)',
                                      style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Meera',
                                        fontSize: 12.sp,
                                        decoration: TextDecoration.none,
                                        height: 1.0,
                                      ),
                                      textAlign: TextAlign.center),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text('4',
                                      style: TextStyle(
                                        color: Colors.brown.shade900,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Arial',
                                        fontSize: 12.sp,
                                        decoration: TextDecoration.none,
                                      ),
                                      textAlign: TextAlign.center),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text(
                                      'திருத்தணியில் உதித்தருளும் (20 முறை)',
                                      style: TextStyle(
                                        color: Colors.brown.shade900,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Meera',
                                        fontSize: 12.sp,
                                        decoration: TextDecoration.none,
                                        height: 1.0,
                                      ),
                                      textAlign: TextAlign.center),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text('5',
                                      style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Arial',
                                        fontSize: 12.sp,
                                        decoration: TextDecoration.none,
                                      ),
                                      textAlign: TextAlign.center),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text(
                                      'பருத்தமுலை, திருத்தணியில் முதல்\n'
                                      'சொலற்கரிய, திருத்தணியில் வரை\n(16x4=64 இணை கண்ணிகள்)\n'
                                      '"திருத்தணியில்" கண்ணி 68 முறை (17x4) ஓதப்படும்',
                                      style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Meera',
                                        fontSize: 12.sp,
                                        decoration: TextDecoration.none,
                                        height: 1.0,
                                      ),
                                      textAlign: TextAlign.center),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text('6',
                                      style: TextStyle(
                                        color: Colors.brown.shade900,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Arial',
                                        fontSize: 12.sp,
                                        decoration: TextDecoration.none,
                                      ),
                                      textAlign: TextAlign.center),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text(
                                      'திருத்தணியில் உதித்தருளும் (20 முறை)\n'
                                      'வேலும் மயிலும் துணை (6 முறை)',
                                      style: TextStyle(
                                        color: Colors.brown.shade900,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Meera',
                                        fontSize: 12.sp,
                                        decoration: TextDecoration.none,
                                        height: 1.0,
                                      ),
                                      textAlign: TextAlign.center),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text('7',
                                      style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Arial',
                                        fontSize: 12.sp,
                                        decoration: TextDecoration.none,
                                      ),
                                      textAlign: TextAlign.center),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text('வேலின் ஆற்றல்: தேர் அணி இட்டு',
                                      style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Meera',
                                        fontSize: 12.sp,
                                        decoration: TextDecoration.none,
                                        height: 1.0,
                                      ),
                                      textAlign: TextAlign.center),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text('8',
                                      style: TextStyle(
                                        color: Colors.brown.shade900,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Arial',
                                        fontSize: 12.sp,
                                        decoration: TextDecoration.none,
                                      ),
                                      textAlign: TextAlign.center),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child:
                                      Text('வேலின் ஆற்றல்: வீர வேல் தாரை வேல்',
                                          style: TextStyle(
                                            color: Colors.brown.shade900,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Meera',
                                            fontSize: 12.sp,
                                            decoration: TextDecoration.none,
                                            height: 1.0,
                                          ),
                                          textAlign: TextAlign.center),
                                ),
                              ],
                            ),
                          ])),
                  SizedBox(height: 0.02.sh),
                  Text(
                    'நன்கு பொருளுணர்ந்து பாடலை ஓத வேண்டும் என்ற எண்ணத்தில் வரிகள் பதம் பிரித்து கொடுக்கப்பட்டுள்ளன. மேலும் உதவியாக, சில பதங்கள், குழுவாக சேர்ந்து ஒரே சமயத்தில் திரையில் தோன்றும். திரையில் தோன்றும்போது, நாமும் அதனோடு சேர்ந்து ஓத வேண்டும். ஒரு பாடல் முடிந்ததும், பொத்தானை தட்டினால் அடுத்த பாடல் திரையில் தோன்றும்.',
                    style: TextStyle(
                      fontFamily: 'meera',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown.shade900,
                      decoration: TextDecoration.none,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 0.01.sh),
                  Text(
                    'இந்தப் பாராயண முறையில், "திருத்தணியில்" கண்ணி 108 முறை ஓதப்படுகிறது. இந்த செயலியில் பாராயணம் செய்யும் போது, ஒவ்வொரு முறை "திருத்தணியில்" கண்ணி ஓதும்போதும், வள்ளிமலை முருகர் சந்நிதியில் செவ்வாய்க்கிழமை இராகுகால அபிஷேகத்தின் போது ஒலிக்கும் மணி ஒலி, ஒருமுறை ஒலிக்கும். அமைதியான சூழ்நிலையில் பாராயணம் செய்ய விரும்பினால், மணி ஒலியை நிறுத்திக் கொள்ளலாம்',
                    style: TextStyle(
                      fontFamily: 'meera',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                      decoration: TextDecoration.none,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 0.02.sh,
                  ),
                  CustomButton(
                    buttonText: 'பாராயணம் தொடர',
                    buttonColor: Colors.deepPurple,
                    fontColor: Colors.white,
                    buttonWidth: 0.55.sw,
                    onPressed: () {
                      Navigator.of(context).push(createRoute());
                    },
                  ),
                  SizedBox(
                    height: 0.04.sh,
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}

class Magic extends StatefulWidget {
  const Magic({super.key});
  @override
  State<Magic> createState() => _MagicState();
}

class _MagicState extends State<Magic> {
  late VideoPlayerController _controller;
  bool _startVideo = false;

  void _stopVideo() {
    Future.delayed(const Duration(seconds: 37), () {
      setState(() {
        _controller.seekTo(Duration.zero);
      });
      _startVideo = false;
    });
  }

  Route _createRoute() {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) => const Choice(),
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
    _controller =
        VideoPlayerController.asset('assets/video/app_embedded_video.mp4')
          ..initialize().then((_) {
            setState(() {}); // Refresh UI after video loads
          });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFF4),
      body: Center(
          child: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 0.05.sh,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                child: Text(
                  'வேல் மாறல் பாராயணத்தின் முதற்கட்டமாக, வேல் வகுப்பு, வேல் மாறல் எனும் மகா மந்திரமான அதிசயத்தைப் புரிந்து கொள்வோம்.\n',
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
              Container(
                width: 0.95.sw,
                decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: Colors.brown),
                    borderRadius: BorderRadius.circular(8)),
                padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'அந்த அதிசயத்தைக்\nகாண இந்த\nபொத்தானைத் தட்டவும்.',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                        fontSize: 12.sp,
                        decoration: TextDecoration.none,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: !_startVideo
                              ? () {
                                  _controller.play();
                                  _startVideo = true;
                                  _stopVideo();
                                  setState(
                                      () {}); // Update UI to reflect the state change
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
                              const IconData(0xe6a8,
                                  fontFamily: 'MaterialIcons'),
                              size: 30.0,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Text(
                          '35 நொடி',
                          style: TextStyle(
                            color: Colors.brown,
                            fontFamily: 'arial',
                            fontSize: 12.0.sp,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 0.01.sh,
              ),
              Container(
                  width: 0.95.sw,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2.0, color: Colors.brown),
                      borderRadius: BorderRadius.circular(8)),
                  padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 0.4.sh,
                          width: 0.95.sw,
                          child: !(_controller.value.isInitialized &&
                                  _startVideo)
                              ? Image.asset(
                                  'assets/images/vel_maral_sequence_technique.webp',
                                  fit: BoxFit.contain)
                              : AspectRatio(
                                  aspectRatio: _controller.value.aspectRatio,
                                  child: VideoPlayer(_controller),
                                ),
                        ),
                        SizedBox(
                          height: 0.005.sh,
                        ),
                        Text(
                          'முழு 4 சுற்றுகளையும் எளிய விளக்கங்களோடு காண',
                          style: TextStyle(
                            fontFamily: 'meera',
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple,
                            fontSize: 11.sp,
                            decoration: TextDecoration.none,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Youtube Video Link: \nhttps://tinyurl.com/vel-maral-sequence',
                          style: TextStyle(
                            fontFamily: 'arial',
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 128, 0, 32),
                            fontSize: 11.sp,
                            decoration: TextDecoration.none,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'YouTube search: "vel maral sequence"',
                          style: TextStyle(
                            fontFamily: 'meera',
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple,
                            fontSize: 13.sp,
                            decoration: TextDecoration.none,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ])),
              SizedBox(
                height: 0.01.sh,
              ),
              Visibility(
                visible: !_startVideo,
                child: CustomButton(
                  buttonText: 'பாராயணம் தொடங்க',
                  buttonColor: Colors.deepPurple,
                  fontColor: Colors.white,
                  buttonWidth: 0.55.sw,
                  onPressed: () {
                    Navigator.of(context).push(_createRoute());
                  },
                ),
              ),
              SizedBox(
                height: 0.02.sh,
              ),
            ]),
      )),
    );
  }
}

class Kulatheivam extends StatefulWidget {
  const Kulatheivam({super.key});
  @override
  State<Kulatheivam> createState() => _KulatheivamState();
}

class _KulatheivamState extends State<Kulatheivam> {
  bool kt1 = false;
  bool kt2 = false;

  void _kulatheivam() {
    Future.delayed(const Duration(milliseconds: 2000), () {
      setState(() {
        kt1 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 4000), () {
      setState(() {
        kt2 = true;
      });
    });
  }

  @override
  void initState() {
    _kulatheivam();
    super.initState();
  }

  Route createRoute() {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) =>
          const Vinayagar(),
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
  Widget build(BuildContext context) {
    return Container(
        color: Colors.lightGreen.shade50,
        child: Center(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).padding.bottom),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 0.03.sh,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          SizedBox(
                            width: 0.40.sw,
                            child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: !kt1
                                    ? Image.asset(
                                        'assets/images/chengam_kaliamman.webp',
                                      )
                                    : Image.asset(
                                        'assets/images/kulatheivam_text.webp',
                                      )),
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'குலதெய்வ',
                                  style: TextStyle(
                                    fontFamily: 'kavivanar',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepPurple,
                                    fontSize: 16.sp,
                                    decoration: TextDecoration.none,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  'வழிபாடு',
                                  style: TextStyle(
                                    fontFamily: 'kavivanar',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.brown.shade900,
                                    fontSize: 16.sp,
                                    decoration: TextDecoration.none,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ]),
                        ],
                      ),
                      SizedBox(
                        height: 0.01.sh,
                      ),
                      SizedBox(
                        height: 0.05.sh,
                        child: Visibility(
                            visible: kt2,
                            child: CustomButton(
                              buttonText: 'நெஞ்சக் கனகல்லும்',
                              buttonColor: Colors.deepPurple,
                              fontColor: Colors.white,
                              buttonWidth: 0.55.sw,
                              onPressed: () {
                                Navigator.of(context).push(createRoute());
                              },
                            )),
                      ),
                      SizedBox(
                        height: 0.01.sh,
                      ),
                      Visibility(
                          visible: kt1,
                          child: Container(
                              width: 0.95.sw,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.brown, width: 2.0),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RichText(
                                    textAlign: TextAlign.justify,
                                    text: TextSpan(children: [
                                      TextSpan(
                                        text:
                                            'குலதெய்வ வழிபாட்டின் முக்கியத்துவம்:\n\n',
                                        style: TextStyle(
                                          fontFamily: 'meera',
                                          fontSize: 15.0.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.deepPurple,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            'நம் குலத்தினை காக்கும் தெய்வம் குலதெய்வம் ஆகும். '
                                            'குலதெய்வமே நமக்கு எளிதில் அருளினை தரும். மேலும் மற்ற தெய்வ வழிபாடுகளின் பலன்களையும் பெற்று தரும். '
                                            'எமன் கூட ஒருவரின் குலதெய்வத்தின் அனுமதி பெற்று தான் உயிரை எடுக்கமுடியும். '
                                            'நமது முன்னோர்களில் தெய்வமாக மாறிவிட்ட புனித ஆத்மாக்கள் தங்களின் குலத்தினை சார்ந்தவர்களை கண்ணும் கருத்துமாக பேணிக் காக்கும் வல்லமை படைத்தவை. '
                                            'எனவே தான் அந்த தெய்வங்கள் "குலதெய்வங்கள்" என்று சிறப்புடன் அழைக்கப்படுகின்றன.\n \n',
                                        style: TextStyle(
                                          fontFamily: 'meera',
                                          fontSize: 12.0.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.brown.shade900,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            'குலதெய்வங்கள் கர்மவினைகளை நீக்க வல்லவை.'
                                            'குலதெய்வத்தைத் தொழும் போது, நம் முன்னோர்கள் பித்ருக்களாக இருந்து நம்மை ஆசிர்வாதிக்கிறார்கள். '
                                            'பெண்கள் பிறந்த வீட்டின் குலதெய்வத்தை வழிபடுவது, அவர்களை புகுந்த வீட்டில் எந்த பிரச்சினையும் இல்லாமல் வாழ வழிவகுக்கும். '
                                            'குலதெய்வதோஷம் இருந்தால், மற்ற தெய்வங்களின் அருள் கிடைக்காது. குலதெய்வத்தின் அனுமதி அல்லது அனுகிரகம் இல்லை என்றால் ஒருவர் என்னதான் சக்தி வாய்ந்த ஹோமம், யாகம் செய்தாலும், ஆலயங்களுக்கு சென்றாலும் எதிர்பார்த்த பலன் தருமா என்பது சந்தேகம்தான். '
                                            'எனவே, நம் குலதெய்வ கோவிலுக்கு அடிக்கடி (குறைந்தது வருடம் ஒரு முறையாவது) சென்று, அபிஷேக ஆராதனைகள் செய்து மனமுருக வேண்டுவோம்.',
                                        style: TextStyle(
                                          fontFamily: 'meera',
                                          fontSize: 12.0.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.deepPurple,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                    ])),
                              ))),
                      SizedBox(
                        height: 0.03.sh,
                      ),
                    ],
                  ),
                ))));
  }
}

class Vinayagar extends StatefulWidget {
  const Vinayagar({super.key});
  @override
  State<Vinayagar> createState() => _VinayagarState();
}

class _VinayagarState extends State<Vinayagar> {
  bool v1 = false;
  bool v2 = false;
  bool v3 = false;
  bool v4 = false;
  bool v5 = false;
  bool v6 = false;
  bool v7 = false;
  bool v8 = false;
  bool _p1 = false;
  bool _p2 = false;
  bool _p3 = false;
  bool _p4 = false;
  bool _p5 = false;
  bool _p6 = false;
  bool vcmp = false;
  bool vmeaning = false;
  bool _canPop = true;

  void vlinesAppear() {
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        v1 = true;
        _canPop = false;
      });
    });

    Future.delayed(const Duration(milliseconds: 1500), () {
      setState(() {
        v2 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 2500), () {
      setState(() {
        v3 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 4000), () {
      setState(() {
        v4 = true;
      });
    });
    Future.delayed(const Duration(milliseconds: 5000), () {
      setState(() {
        v5 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 6000), () {
      setState(() {
        v6 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 7500), () {
      setState(() {
        v7 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 8000), () {
      setState(() {
        v8 = true;
      });
    });
    Future.delayed(const Duration(milliseconds: 9000), () {
      setState(() {
        _p1 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 10000), () {
      setState(() {
        _p2 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 11000), () {
      setState(() {
        _p3 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 12000), () {
      setState(() {
        _p4 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 13000), () {
      setState(() {
        _p5 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 14000), () {
      setState(() {
        _p6 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 15000), () {
      setState(() {
        vcmp = true;
      });
    });
  }

  Route createRoute() {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) => const Murugar(),
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
  initState() {
    vmeaning = false;
    _canPop = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: _canPop,
      child: Container(
          color: const Color.fromRGBO(241, 248, 233, 1),
          child: Center(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).padding.bottom),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 0.02.sh),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset('assets/images/pillaiyar.webp',
                                    width: 0.3.sw,
                                    height: 0.3.sh,
                                    fit: BoxFit.contain),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'விநாயகர்',
                                      style: TextStyle(
                                        fontFamily: 'kavivanar',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepPurple,
                                        fontSize: 16.sp,
                                        decoration: TextDecoration.none,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'வணக்கம்',
                                      style: TextStyle(
                                        fontFamily: 'kavivanar',
                                        fontWeight: FontWeight.bold,
                                        color: const Color.fromARGB(
                                            255, 128, 0, 32),
                                        fontSize: 16.sp,
                                        decoration: TextDecoration.none,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ]),
                          Container(
                              width: 0.95.sw,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.brown, width: 2.0),
                                borderRadius: BorderRadius.circular(8.0),
                                color: Colors.lightGreen.shade100,
                              ),
                              child: Column(children: [
                                SizedBox(height: 0.01.sh),
                                PText(pText: 'நெஞ்சக் கன கல்லும்', pColor: v1),
                                MText(mText: 'நெகிழ்ந்து உருகத்', mColor: v2),
                                SizedBox(height: 0.005.sh),
                                PText(
                                    pText: 'தஞ்சத்து அருள் சண்முகனுக்கு',
                                    pColor: v3),
                                MText(mText: 'இயல்சேர்', mColor: v4),
                                SizedBox(height: 0.005.sh),
                                PText(pText: 'செஞ்சொற் புனை மாலை', pColor: v5),
                                MText(mText: 'சிறந்திடவே', mColor: v6),
                                SizedBox(height: 0.005.sh),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    PText(pText: 'பஞ்சக்கர ஆனை', pColor: v7),
                                    SizedBox(
                                      width: 0.02.sw,
                                    ),
                                    MText(mText: 'பதம் பணிவாம்.', mColor: v8),
                                  ],
                                ),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      _p1
                                          ? SizedBox(
                                              child: Image.asset(
                                                  'assets/images/velum_mayilum.webp',
                                                  width: 0.3.sw,
                                                  height: 0.19.sh,
                                                  fit: BoxFit.contain),
                                            )
                                          : SizedBox(
                                              width: 0.3.sw,
                                              height: 0.19.sh,
                                              child: GestureDetector(
                                                onTap: () {
                                                  vcmp = true;
                                                },
                                              )),
                                      _p1
                                          ? Column(
                                              children: [
                                                P1Text(
                                                    p1Text:
                                                        'வேலும் மயிலும் துணை',
                                                    p1Color: _p1),
                                                M1Text(
                                                    m1Text:
                                                        'வேலும் மயிலும் துணை',
                                                    m1Color: _p2),
                                                P1Text(
                                                    p1Text:
                                                        'வேலும் மயிலும் துணை',
                                                    p1Color: _p3),
                                                M1Text(
                                                    m1Text:
                                                        'வேலும் மயிலும் துணை',
                                                    m1Color: _p4),
                                                P1Text(
                                                    p1Text:
                                                        'வேலும் மயிலும் துணை',
                                                    p1Color: _p5),
                                                M1Text(
                                                    m1Text:
                                                        'வேலும் மயிலும் துணை',
                                                    m1Color: _p6),
                                              ],
                                            )
                                          : SizedBox(
                                              width: 0.3.sw,
                                              height: 0.19.sh,
                                            ),
                                    ]),
                              ])),
                          SizedBox(
                            height: 0.01.sh,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Visibility(
                                    visible: vcmp,
                                    child: CustomButton(
                                      buttonText: 'விழிக்குத் துணை',
                                      buttonColor:
                                          const Color.fromARGB(255, 128, 0, 32),
                                      fontColor: Colors.white,
                                      buttonWidth: 0.55.sw,
                                      onPressed: () {
                                        Navigator.of(context)
                                            .push(createRoute())
                                            .then((_) {
                                          // Reset _canPop when returning to this screen
                                          setState(() {
                                            _canPop =
                                                true; // Enable back button again
                                          });
                                        });
                                      },
                                    ),
                                  ),
                                  Visibility(
                                      visible: !vcmp,
                                      child: CustomButton(
                                        buttonText: 'நெஞ்சக் கனகல்லும்',
                                        buttonColor: Colors.deepPurple,
                                        fontColor: Colors.white,
                                        buttonWidth: 0.55.sw,
                                        onPressed: () {
                                          vlinesAppear();
                                        },
                                      )),
                                ],
                              ),
                            ],
                          ),
                          CustomButton(
                            buttonText: !vmeaning ? 'பதவுரை திற' : 'பதவுரை மறை',
                            buttonColor: Colors.green,
                            fontColor: Colors.white,
                            buttonWidth: 0.55.sw,
                            onPressed: () {
                              setState(() {
                                vmeaning = !vmeaning;
                              });
                            },
                          ),
                          Visibility(
                            visible: vmeaning,
                            child: RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                text:
                                    'பாடல் பதவுரை: (மகான் அருணகிரிநாதர் அருளிய கந்தர் அநுபூதி காப்பு பாடல்).\n\nகனமான கல் போன்ற நெஞ்சத்தை உடையவர்களும், நெகிழ்ந்து உருகும் படியாக, தஞ்சமடைந்தவர்களுக்கு அருள் புரியும் சண்முகனுக்கு, தமிழ் இலக்கணம் மாறாது, சிறந்த சொற்களைக் கொண்டு, தொடுக்கப் பட்ட மாலைப் போன்ற, கந்தர் அநுபூதி (ஒப்பான வேல் மாறல் மஹா மந்திரம்), சிறப்பாக அமைய (சிறப்பாகப் பாராயணம் செய்ய), ஐந்து கரங்களை உடைய விநாயகரின், பாதங்களைப் பணிந்து வணங்குவோம்',
                                style: TextStyle(
                                  fontFamily: 'meera',
                                  fontSize: 12.0.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade600,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 0.03.sh,
                          ),
                        ]),
                  )))),
    );
  }
}

class Murugar extends StatefulWidget {
  const Murugar({super.key});
  @override
  State<Murugar> createState() => _MurugarState();
}

class _MurugarState extends State<Murugar> {
  bool m1 = false;
  bool m2 = false;
  bool m3 = false;
  bool m4 = false;
  bool m5 = false;
  bool m6 = false;
  bool m7 = false;
  bool m8 = false;
  bool m9 = false;
  bool m10 = false;
  bool m11 = false;
  bool m12 = false;
  bool _k1 = false;
  bool _k2 = false;
  bool _k3 = false;
  bool _k4 = false;
  bool _k5 = false;
  bool _k6 = false;
  bool mcmp = false;
  bool mmeaning = false;
  bool _canPop = true;

  void mlinesAppear() {
    Future.delayed(const Duration(milliseconds: 200), () {
      setState(() {
        m1 = true;
        _canPop = false;
      });
    });

    Future.delayed(const Duration(milliseconds: 1000), () {
      setState(() {
        m2 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 2200), () {
      setState(() {
        m3 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 3000), () {
      setState(() {
        m4 = true;
      });
    });
    Future.delayed(const Duration(milliseconds: 3800), () {
      setState(() {
        m5 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 4800), () {
      setState(() {
        m6 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 5500), () {
      setState(() {
        m7 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 6000), () {
      setState(() {
        m8 = true;
      });
    });
    Future.delayed(const Duration(milliseconds: 7200), () {
      setState(() {
        m9 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 8000), () {
      setState(() {
        m10 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 8800), () {
      setState(() {
        m11 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 9400), () {
      setState(() {
        m12 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 11000), () {
      setState(() {
        _k1 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 12000), () {
      setState(() {
        _k2 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 13000), () {
      setState(() {
        _k3 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 14000), () {
      setState(() {
        _k4 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 15000), () {
      setState(() {
        _k5 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 16000), () {
      setState(() {
        _k6 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 17000), () {
      setState(() {
        mcmp = true;
      });
    });
  }

  Route createRoute() {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) => const Mayil(),
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
  initState() {
    mmeaning = false;
    _canPop = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: _canPop,
      child: Container(
          color: Colors.lightGreen.shade50, //(0xFFF9F9F9),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).padding.bottom),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 0.02.sh),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset('assets/images/shanmuga_murugar.webp',
                              width: 0.3.sw,
                              height: 0.25.sh,
                              fit: BoxFit.cover),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'முருகர்',
                                style: TextStyle(
                                  fontFamily: 'kavivanar',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple,
                                  fontSize: 16.sp,
                                  decoration: TextDecoration.none,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                'பெருமை',
                                style: TextStyle(
                                  fontFamily: 'kavivanar',
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(255, 128, 0, 32),
                                  fontSize: 16.sp,
                                  decoration: TextDecoration.none,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ]),
                    Container(
                        width: 0.95.sw,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.brown, width: 2.0),
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.lightGreen.shade100),
                        child: Column(children: [
                          SizedBox(height: 0.01.sh),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              PText(pText: 'விழிக்குத் துணை ', pColor: m1),
                              MText(mText: 'திரு மென்மலர்ப்', mColor: m2),
                            ],
                          ),
                          SizedBox(width: 0.005.sh),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                MText(mText: 'பாதங்கள் ', mColor: m2),
                                PText(pText: 'மெய்ம்மை குன்றா', pColor: m3),
                              ]),
                          SizedBox(width: 0.005.sh),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MText(mText: 'மொழிக்குத் துணை  ', mColor: m4),
                              PText(pText: 'முருகா எனும்', pColor: m5),
                            ],
                          ),
                          SizedBox(width: 0.005.sh),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              PText(pText: 'நாமங்கள் ', pColor: m5),
                              MText(mText: 'முன்பு செய்த', mColor: m6),
                            ],
                          ),
                          SizedBox(width: 0.005.sh),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              PText(pText: 'பழிக்குத் துணை ', pColor: m7),
                              MText(mText: 'அவன் பன்னிரு', mColor: m8),
                            ],
                          ),
                          SizedBox(width: 0.005.sh),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MText(mText: 'தோளும் ', mColor: m8),
                              PText(pText: 'பயந்த தனி', pColor: m9),
                            ],
                          ),
                          SizedBox(width: 0.005.sh),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MText(mText: 'வழிக்குத் துணை ', mColor: m10),
                              PText(pText: 'வடிவேலும்', pColor: m11),
                            ],
                          ),
                          SizedBox(width: 0.005.sh),
                          MText(mText: 'செங்கோடன் மயூரமுமே.', mColor: m12),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                _k1
                                    ? SizedBox(
                                        child: Image.asset(
                                            'assets/images/velum_mayilum.webp',
                                            width: 0.3.sw,
                                            height: 0.19.sh,
                                            fit: BoxFit.contain),
                                      )
                                    : SizedBox(
                                        width: 0.3.sw,
                                        height: 0.19.sh,
                                      ),
                                _k1
                                    ? Column(
                                        children: [
                                          P1Text(
                                              p1Text: 'வேலும் மயிலும் துணை',
                                              p1Color: _k1),
                                          M1Text(
                                              m1Text: 'வேலும் மயிலும் துணை',
                                              m1Color: _k2),
                                          P1Text(
                                              p1Text: 'வேலும் மயிலும் துணை',
                                              p1Color: _k3),
                                          M1Text(
                                              m1Text: 'வேலும் மயிலும் துணை',
                                              m1Color: _k4),
                                          P1Text(
                                              p1Text: 'வேலும் மயிலும் துணை',
                                              p1Color: _k5),
                                          M1Text(
                                              m1Text: 'வேலும் மயிலும் துணை',
                                              m1Color: _k6),
                                        ],
                                      )
                                    : SizedBox(
                                        width: 0.3.sw,
                                        height: 0.19.sh,
                                        child: GestureDetector(
                                          onTap: () {
                                            mcmp = true;
                                          },
                                        )),
                              ]),
                        ])),
                    SizedBox(
                      height: 0.01.sh,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Visibility(
                                visible: mcmp,
                                child: CustomButton(
                                  buttonText: 'தடக்கொற்ற',
                                  buttonColor:
                                      const Color.fromARGB(255, 128, 0, 32),
                                  fontColor: Colors.white,
                                  buttonWidth: 0.55.sw,
                                  onPressed: () {
                                    Navigator.of(context)
                                        .push(createRoute())
                                        .then((_) {
                                      // Reset _canPop when returning to this screen
                                      setState(() {
                                        _canPop =
                                            true; // Enable back button again
                                      });
                                    });
                                  },
                                )),
                            Visibility(
                                visible: !mcmp,
                                child: CustomButton(
                                  buttonText: 'விழிக்குத் துணை',
                                  buttonColor: Colors.deepPurple,
                                  fontColor: Colors.white,
                                  buttonWidth: 0.55.sw,
                                  onPressed: () {
                                    mlinesAppear();
                                  },
                                )),
                          ],
                        ),
                      ],
                    ),
                    CustomButton(
                      buttonText: !mmeaning ? 'பதவுரை திற' : 'பதவுரை மறை',
                      buttonColor: Colors.green,
                      fontColor: Colors.white,
                      buttonWidth: 0.55.sw,
                      onPressed: () {
                        setState(() {
                          mmeaning = !mmeaning;
                        });
                      },
                    ),
                    Visibility(
                      visible: mmeaning,
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          text:
                              'பாடல் பதவுரை: (மகான் அருணகிரிநாதர் அருளிய கந்தர் அலங்காரம் 70 ஆவது பாடல்).\n\nநமது கண்களுக்குத் துணையாவது, முருகனின் மென்மையான செந்தாமரை மலர் போன்ற திருவடிகளேயாகும். உண்மையில் ஒருசிறிதும் குறையாத, சொல்லுக்குத் துணையாவது, முருகா என்னும் திருநாமங்களேயாகும். முன்பு செய்த பழியைத் தருகின்ற பாவத்தை அகற்றுவதற்குத் துணையாவது, முருகனின் பன்னிரண்டு புயங்களுமேயாகும். ஆன்மாவின் பயந்த தனிமையான வழிக்குத் துணையாவது, திருச்செங்கோட்டில் எழுந்தருளியுள்ள கந்தப்பெருமானுடைய கூர்மையான வேலாயுதமும் மயிலுமேயாகும்',
                          style: TextStyle(
                            fontFamily: 'meera',
                            fontSize: 12.0.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade600,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 0.03.sh,
                    ),
                  ]),
            ),
          ))),
    );
  }
}

class Mayil extends StatefulWidget {
  const Mayil({super.key});
  @override
  State<Mayil> createState() => _MayilState();
}

class _MayilState extends State<Mayil> {
  bool t1 = false;
  bool t2 = false;
  bool t3 = false;
  bool t4 = false;
  bool t5 = false;
  bool t6 = false;
  bool t7 = false;
  bool t8 = false;
  bool t9 = false;
  bool t10 = false;
  bool t11 = false;
  bool t12 = false;
  bool _n1 = false;
  bool _n2 = false;
  bool _n3 = false;
  bool _n4 = false;
  bool _n5 = false;
  bool _n6 = false;
  bool tcmp = false;
  bool tmeaning = false;
  bool _canPop = true;

  void tlinesAppear() {
    Future.delayed(const Duration(milliseconds: 200), () {
      setState(() {
        t1 = true;
        _canPop = false;
      });
    });

    Future.delayed(const Duration(milliseconds: 1000), () {
      setState(() {
        t2 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 1800), () {
      setState(() {
        t3 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 2400), () {
      setState(() {
        t4 = true;
      });
    });
    Future.delayed(const Duration(milliseconds: 3200), () {
      setState(() {
        t5 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 4000), () {
      setState(() {
        t6 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 5500), () {
      setState(() {
        t7 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 6500), () {
      setState(() {
        t8 = true;
      });
    });
    Future.delayed(const Duration(milliseconds: 7500), () {
      setState(() {
        t9 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 9000), () {
      setState(() {
        t10 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 10500), () {
      setState(() {
        t11 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 12000), () {
      setState(() {
        t12 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 14000), () {
      setState(() {
        _n1 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 15000), () {
      setState(() {
        _n2 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 16000), () {
      setState(() {
        _n3 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 17000), () {
      setState(() {
        _n4 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 18000), () {
      setState(() {
        _n5 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 19000), () {
      setState(() {
        _n6 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 20000), () {
      setState(() {
        tcmp = true;
      });
    });
  }

  Route createRoute() {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) =>
          const ThiruththaniyilFirst(),
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
  initState() {
    tmeaning = false;
    _canPop = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: _canPop,
      child: Container(
          color: Colors.lightGreen.shade50,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).padding.bottom),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 0.02.sh),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset('assets/images/mayil.webp',
                                width: 0.3.sw,
                                height: 0.23.sh,
                                fit: BoxFit.contain),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'மயிலின்',
                                  style: TextStyle(
                                    fontFamily: 'kavivanar',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepPurple,
                                    fontSize: 16.sp,
                                    decoration: TextDecoration.none,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  'திறன்',
                                  style: TextStyle(
                                    fontFamily: 'kavivanar',
                                    fontWeight: FontWeight.bold,
                                    color:
                                        const Color.fromARGB(255, 128, 0, 32),
                                    fontSize: 16.sp,
                                    decoration: TextDecoration.none,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ]),
                      Container(
                          width: 0.95.sw,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.brown, width: 2.0),
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.lightGreen.shade100),
                          child: Column(children: [
                            SizedBox(height: 0.01.sh),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                PText(pText: 'தடக் கொற்ற ', pColor: t1),
                                MText(mText: 'வேள் மயிலே!', mColor: t2),
                              ],
                            ),
                            SizedBox(
                              height: 0.005.sh,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                PText(pText: 'இடர் தீரத்  ', pColor: t3),
                                MText(mText: 'தனிவிடில் நீ', mColor: t4),
                              ],
                            ),
                            SizedBox(
                              height: 0.005.sh,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                PText(pText: 'வடக்கில் கிரிக்கு  ', pColor: t5),
                                MText(mText: 'அப்புறத்து நின்று', mColor: t6),
                              ],
                            ),
                            SizedBox(
                              height: 0.005.sh,
                            ),
                            PText(pText: 'ஓகையின் வட்டம் இட்டுக்', pColor: t7),
                            SizedBox(
                              height: 0.005.sh,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                MText(
                                    mText: 'கடலுக்கு அப்புறத்தும் ',
                                    mColor: t8),
                                PText(pText: 'கதிர்க்கு', pColor: t9),
                              ],
                            ),
                            SizedBox(
                              height: 0.005.sh,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                PText(pText: 'அப்புறத்தும்  ', pColor: t9),
                                PText(
                                    pText: 'கனகசக்ரத் திடர்க்கு', pColor: t10),
                              ],
                            ),
                            SizedBox(
                              height: 0.005.sh,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                PText(pText: 'அப்புறத்தும்  ', pColor: t10),
                                MText(
                                    mText: 'திசைக்கு அப்புறத்தும்',
                                    mColor: t11),
                              ],
                            ),
                            PText(pText: 'திரிகுவையே.', pColor: t12),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  _n1
                                      ? SizedBox(
                                          child: Image.asset(
                                              'assets/images/velum_mayilum.webp',
                                              width: 0.3.sw,
                                              height: 0.19.sh,
                                              fit: BoxFit.contain),
                                        )
                                      : SizedBox(
                                          width: 0.3.sw,
                                          height: 0.19.sh,
                                        ),
                                  _n1
                                      ? Column(
                                          children: [
                                            P1Text(
                                                p1Text: 'வேலும் மயிலும் துணை',
                                                p1Color: _n1),
                                            M1Text(
                                                m1Text: 'வேலும் மயிலும் துணை',
                                                m1Color: _n2),
                                            P1Text(
                                                p1Text: 'வேலும் மயிலும் துணை',
                                                p1Color: _n3),
                                            M1Text(
                                                m1Text: 'வேலும் மயிலும் துணை',
                                                m1Color: _n4),
                                            P1Text(
                                                p1Text: 'வேலும் மயிலும் துணை',
                                                p1Color: _n5),
                                            M1Text(
                                                m1Text: 'வேலும் மயிலும் துணை',
                                                m1Color: _n6),
                                          ],
                                        )
                                      : SizedBox(
                                          width: 0.3.sw,
                                          height: 0.19.sh,
                                          child: GestureDetector(
                                            onTap: () {
                                              tcmp = true;
                                            },
                                          )),
                                ]),
                          ])),
                      SizedBox(
                        height: 0.01.sh,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Visibility(
                                  visible: tcmp,
                                  child: CustomButton(
                                    buttonText: 'திருத்தணியில் (20)',
                                    buttonColor:
                                        const Color.fromARGB(255, 128, 0, 32),
                                    fontColor: Colors.white,
                                    buttonWidth: 0.55.sw,
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(createRoute())
                                          .then((_) {
                                        // Reset _canPop when returning to this screen
                                        setState(() {
                                          _canPop =
                                              true; // Enable back button again
                                        });
                                      });
                                    },
                                  )),
                              Visibility(
                                  visible: !tcmp,
                                  child: CustomButton(
                                    buttonText: 'தடக்கொற்ற',
                                    buttonColor: Colors.deepPurple,
                                    fontColor: Colors.white,
                                    buttonWidth: 0.55.sw,
                                    onPressed: () {
                                      tlinesAppear();
                                    },
                                  )),
                            ],
                          ),
                        ],
                      ),
                      CustomButton(
                        buttonText: !tmeaning ? 'பதவுரை திற' : 'பதவுரை மறை',
                        buttonColor: Colors.green,
                        fontColor: Colors.white,
                        buttonWidth: 0.55.sw,
                        onPressed: () {
                          setState(() {
                            tmeaning = !tmeaning;
                          });
                        },
                      ),
                      Visibility(
                        visible: tmeaning,
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            text:
                                'பாடல் பதவுரை: (மகான் அருணகிரிநாதர் அருளிய கந்தர் அலங்காரம் 96 ஆவது பாடல்).\n\nபெரிய (தட) வெற்றியையுடைய (கொற்ற) முருகவெளின்(வேள்) மயிலே, உலகத்தின் துன்பம் தீரும் பொருட்டு, உன்னை எம்பெருமான் தனியே செல்லவிடுவாராயின், வடதிசையில் உள்ள மகாமேருமலைக்கு அப்பால், நின்று, மகிழ்ச்சி (ஓகை) யில், சுழன்று பறந்து, கடலுக்கு அப்பாலும், சூரியனுக்கு (கதிர்க்கு) அப்பாலும், சக்ரவாள (கனகசக்கரத்) மலைக்கு (திடர்க்கு) (திடர்=மேடு, மலை) அப்பாலும், எட்டுத் திசைகளுக்கு அப்பாலும், நீ உலாவுவாயே (திரிகுவையே)!',
                            style: TextStyle(
                              fontFamily: 'meera',
                              fontSize: 12.0.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade600,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 0.03.sh,
                      ),
                    ]),
              ),
            ),
          )),
    );
  }
}

class Vel1 extends StatefulWidget {
  const Vel1({super.key});
  @override
  State<Vel1> createState() => _Vel1State();
}

class _Vel1State extends State<Vel1> {
  bool g1 = false;
  bool g2 = false;
  bool g3 = false;
  bool g4 = false;
  bool g5 = false;
  bool g6 = false;
  bool g7 = false;
  bool g8 = false;
  bool gcmp = false;
  bool gmeaning = false;
  bool _canPop = true;

  void glinesAppear() {
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        g1 = true;
        _canPop = false;
      });
    });

    Future.delayed(const Duration(milliseconds: 2000), () {
      setState(() {
        g2 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 3500), () {
      setState(() {
        g3 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 5000), () {
      setState(() {
        g4 = true;
      });
    });
    Future.delayed(const Duration(milliseconds: 6500), () {
      setState(() {
        g5 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 8000), () {
      setState(() {
        g6 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 9500), () {
      setState(() {
        g7 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 11000), () {
      setState(() {
        g8 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 12000), () {
      setState(() {
        gcmp = true;
      });
    });
  }

  Route createRoute() {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) => const Vel2(),
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
  initState() {
    gmeaning = false;
    _canPop = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: _canPop,
      child: Container(
        color: Colors.lightGreen.shade50,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).padding.bottom),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 0.05.sh),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'assets/images/arupadai_veedu.webp',
                            width: 0.25.sw,
                            height: 0.23.sh,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(
                            height: 0.02.sh,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                'வேலின்',
                                style: TextStyle(
                                  fontFamily: 'kavivanar',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple,
                                  fontSize: 16.sp,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              Text(
                                'ஆற்றல்',
                                style: TextStyle(
                                  fontFamily: 'kavivanar',
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(255, 128, 0, 32),
                                  fontSize: 16.sp,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ],
                          ),
                        ]),
                    Container(
                      width: 0.95.sw,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.brown, width: 2.0),
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.lightGreen.shade100),
                      child: Column(
                        children: [
                          SizedBox(height: 0.01.sh),
                          PText(
                              pText: 'தேர் அணி இட்டு புரம் எரித்தான்',
                              pColor: g1),
                          SizedBox(height: 0.005.sh),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              PText(pText: 'மகன்', pColor: g1),
                              SizedBox(width: 0.008.sw),
                              MText(mText: 'செம் கையில் வேல்', mColor: g2),
                            ],
                          ),
                          SizedBox(height: 0.005.sh),
                          PText(pText: 'கூர் அணி இட்டு அணுவாகிக்', pColor: g3),
                          SizedBox(height: 0.005.sh),
                          MText(mText: 'கிரெளஞ்சம் குலைந்து', mColor: g4),
                          SizedBox(height: 0.005.sh),
                          PText(pText: 'அரக்கர் நேர் அணி இட்டு ', pColor: g5),
                          SizedBox(height: 0.005.sh),
                          MText(mText: 'வளைந்த கடகம் நெளிந்தது ', mColor: g6),
                          SizedBox(height: 0.005.sh),
                          PText(pText: 'சூர்ப் பேர் அணி கெட்டது', pColor: g7),
                          SizedBox(height: 0.005.sh),
                          MText(
                              mText: 'தேவேந்திர லோகம் பிழைத்ததுவே.',
                              mColor: g8),
                          SizedBox(height: 0.01.sh),
                        ],
                      ),
                    ),
                    SizedBox(height: 0.02.sh),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Visibility(
                                visible: gcmp,
                                child: CustomButton(
                                  buttonText: 'வீர வேல் தாரை வேல்',
                                  buttonColor:
                                      const Color.fromARGB(255, 128, 0, 32),
                                  fontColor: Colors.white,
                                  buttonWidth: 0.55.sw,
                                  onPressed: () {
                                    Navigator.of(context)
                                        .push(createRoute())
                                        .then((_) {
                                      // Reset _canPop when returning to this screen
                                      setState(() {
                                        _canPop =
                                            true; // Enable back button again
                                      });
                                    });
                                  },
                                )),
                            Visibility(
                                visible: !gcmp,
                                child: CustomButton(
                                  buttonText: 'தேர் அணி இட்டு',
                                  buttonColor: Colors.deepPurple,
                                  fontColor: Colors.white,
                                  buttonWidth: 0.55.sw,
                                  onPressed: () {
                                    glinesAppear();
                                  },
                                )),
                          ],
                        ),
                      ],
                    ),
                    CustomButton(
                      buttonText: !gmeaning ? 'பதவுரை திற' : 'பதவுரை மறை',
                      buttonColor: Colors.green,
                      fontColor: Colors.white,
                      buttonWidth: 0.55.sw,
                      onPressed: () {
                        setState(() {
                          gmeaning = !gmeaning;
                        });
                      },
                    ),
                    Visibility(
                      visible: gmeaning,
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          text:
                              'பாடல் பதவுரை: (மகான் அருணகிரிநாதர் அருளிய கந்தர் அலங்காரம் இறுதிப் பகுதியில் 3 ஆவது-பாடல்).\n\nதேரை அலங்கரித்துச் செலுத்தி, மூன்று கோட்டைகளை (ஆணவம், கன்மம், மாயை) தம் திருப்பார்வையினாலேயே எரித்து அருளிய, '
                              'சிவபெருமானுடைய திருக்குமாரர் திருமுருகப்பெருமானின் சிவந்த கையில் '
                              'உள்ள கூர்மையான வேலாயுதத்தால் தைக்கப்பட்ட கிரௌஞ்ச '
                              'மலையானது, அணு அணுவாக துகள்போல் அழிந்தது. நேராக '
                              'அணிவகுத்து சூழ்ந்த (வளைந்த) படை (கடகம்), '
                              ' வளைந்து வளைந்து (நெளிந்தது) ஓடியது; சூரபத்மனுடைய பெரிய '
                              ' சேனையும் அழிந்தது. தேவர்கள் அமராவதியும் '
                              'அசுரர்களிடமிருந்து உய்வு பெற்றது',
                          style: TextStyle(
                            fontFamily: 'meera',
                            fontSize: 12.0.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade600,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 0.03.sh,
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

class Vel2 extends StatefulWidget {
  const Vel2({super.key});
  @override
  State<Vel2> createState() => _Vel2State();
}

class _Vel2State extends State<Vel2> {
  bool h1 = false;
  bool h2 = false;
  bool h3 = false;
  bool h4 = false;
  bool h5 = false;
  bool h6 = false;
  bool h7 = false;
  bool h8 = false;
  bool hcmp = false;
  bool hmeaning = false;
  bool _canPop = true;

  void hlinesAppear() {
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        h1 = true;
        _canPop = false;
      });
    });

    Future.delayed(const Duration(milliseconds: 1500), () {
      setState(() {
        h2 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 3000), () {
      setState(() {
        h3 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 4000), () {
      setState(() {
        h4 = true;
      });
    });
    Future.delayed(const Duration(milliseconds: 5000), () {
      setState(() {
        h5 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 6000), () {
      setState(() {
        h6 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 7000), () {
      setState(() {
        h7 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 8000), () {
      setState(() {
        h8 = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 10000), () {
      setState(() {
        hcmp = true;
        _canPop = true;
      });
    });
  }

  Route createRoute() {
    return PageRouteBuilder(
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (context, animation, secondaryAnimation) => const Choice(),
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
  initState() {
    hmeaning = false;
    _canPop = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: _canPop,
      child: Container(
          color: Colors.lightGreen.shade50,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).padding.bottom),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 0.05.sh),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              'assets/images/vetri_vel.webp',
                              width: 0.25.sw,
                              height: 0.18.sh,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(
                              height: 0.02.sh,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'வேலின்',
                                  style: TextStyle(
                                    fontFamily: 'kavivanar',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepPurple,
                                    fontSize: 16.sp,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                Text(
                                  'ஆற்றல்',
                                  style: TextStyle(
                                    fontFamily: 'kavivanar',
                                    fontWeight: FontWeight.bold,
                                    color:
                                        const Color.fromARGB(255, 128, 0, 32),
                                    fontSize: 16.sp,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ],
                            ),
                          ]),
                      SizedBox(
                        height: 0.02.sh,
                      ),
                      Container(
                        width: 0.95.sw,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.brown, width: 2.0),
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.lightGreen.shade100),
                        child: Column(
                          children: [
                            SizedBox(height: 0.01.sh),
                            PText(pText: 'வீரவேல் தாரைவேல்', pColor: h1),
                            SizedBox(height: 0.005.sh),
                            MText(
                                mText: 'விண்ணோர் சிறைமீட்ட தீரவேல்',
                                mColor: h2),
                            SizedBox(height: 0.005.sh),
                            PText(pText: 'செவ்வேள் திருக்கைவேல்', pColor: h3),
                            SizedBox(height: 0.005.sh),
                            MText(mText: 'வாரி குளித்தவேல்', mColor: h4),
                            SizedBox(height: 0.005.sh),
                            PText(pText: 'கொற்றவேல்', pColor: h5),
                            SizedBox(height: 0.005.sh),
                            MText(mText: 'சூர்மார்பும் குன்றும்', mColor: h6),
                            SizedBox(height: 0.005.sh),
                            PText(pText: 'துளைத்தவேல்', pColor: h7),
                            SizedBox(height: 0.005.sh),
                            MText(mText: 'உண்டே துணை.', mColor: h8),
                            SizedBox(height: 0.01.sh),
                          ],
                        ),
                      ),
                      SizedBox(height: 0.02.sh),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(alignment: Alignment.center, children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Visibility(
                                    visible: hcmp,
                                    child: CustomButton(
                                        buttonText: 'பாராயணம் நிறைவு',
                                        buttonColor: const Color.fromARGB(
                                            255, 128, 0, 32),
                                        fontColor: Colors.white,
                                        buttonWidth: 0.55.sw,
                                        onPressed: () {
                                          SystemChannels.platform
                                              .invokeMapMethod(
                                                  'SystemNavigator.pop');
                                        }),
                                  ),
                                  Visibility(
                                    visible: !hcmp,
                                    child: CustomButton(
                                      buttonText: 'வீர வேல் தாரை வேல்',
                                      buttonColor: Colors.deepPurple,
                                      fontColor: Colors.white,
                                      buttonWidth: 0.55.sw,
                                      onPressed: () {
                                        if (!hcmp) {
                                          hlinesAppear();
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                            Visibility(
                              visible: hcmp,
                              child: CustomButton(
                                buttonText: 'முகப்பு',
                                buttonColor: Colors.green,
                                fontColor: Colors.white,
                                buttonWidth: 0.55.sw,
                                onPressed: () {
                                  Navigator.of(context).push(createRoute());
                                },
                              ),
                            )
                          ]),
                      Center(
                        child: Visibility(
                          visible: (!hmeaning && !hcmp),
                          child: CustomButton(
                            buttonText: 'பாடல் பதவுரை',
                            buttonColor: Colors.green,
                            fontColor: Colors.white,
                            buttonWidth: 0.55.sw,
                            onPressed: () {
                              setState(() {
                                hmeaning = true;
                              });
                            },
                          ),
                        ),
                      ),
                      Visibility(
                        visible: hmeaning,
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            text:
                                'பாடல் பதவுரை: (நக்கீரப் பெருமான் அருளிய திருமுருக்காற்றுப்படை 3 ஆவது பாடல்).\n\nவீரத்தையுடைய வேல், கூர்மையான எக்காளமிடும் வேல், தேவர்களை சிறையிலிருந்து மீட்ட தீரத்தையுடைய வேல், முருகப்பெருமான் (செவ்வேள்) திருக்கரத்தில் உள்ள வேல், கடலில் (வாரி) குளித்துச் சூரனைத் தேடிய வேல், வெற்றி தரும் வேல், குரனுடைய மார்பையும் கிரௌஞ்ச மலையையும் ஒருங்கே துளைத்த வேல் நமக்குத் துணையாக இருக்கிறது.\nதாரை-கூர்மை/எக்காளம், வாரி-கடல், கொற்றம்-வெற்றி',
                            style: TextStyle(
                              fontFamily: 'meera',
                              fontSize: 12.0.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade600,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 0.03.sh,
                      ),
                    ]),
              ),
            ),
          )),
    );
  }
}

class Q1 extends StatefulWidget {
  const Q1({super.key});
  @override
  State<Q1> createState() => _Q1State();
}

class _Q1State extends State<Q1> {
  bool qAnswer = false;

  void qReveal() {
    setState(() {
      qAnswer = !qAnswer;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFFFF4),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 2, 10, 2),
          child: SingleChildScrollView(
            padding:
                EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 0.05.sh,
                ),
                Container(
                  width: 0.95.sw,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.brown,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      'வேல் மாறல் (வேல் வகுப்பு)\nசொல்லிய பாட்டின் பொருளுணர்ந்து'
                      ' சொல்லுவோம் (பாராயணம் செய்வோம்)',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 128, 0, 32),
                        decoration: TextDecoration.none,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height: 0.02.sw),
                Container(
                  width: 0.95.sw,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.brown,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      'கீழே உள்ள சொற்களுக்குப்\nபொருளை நினைவு கூறுவோம்',
                      style: TextStyle(
                        fontFamily: 'meera',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                        decoration: TextDecoration.none,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'ஒருத்தன்',
                ),
                M3Text(m3Text: 'மேலானவன்', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'மலை விருத்தன்',
                ),
                M3Text(m3Text: 'மலைக் கிழவன் (தலைவன்)', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'கருத்தன்',
                ),
                M3Text(m3Text: 'செய்வோன் (படைப்பவன்)', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'நகை',
                ),
                M3Text(m3Text: 'பற்கள்', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: '(மறச்)சிறுமி',
                ),
                M3Text(m3Text: 'வேடர் குல', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'கரடம்',
                ),
                M3Text(
                    m3Text:
                        'ஆண் யானையின் கண்ணுக்கும் காதுக்கும் இடையில் உள்ள சுரப்பி துளைகள்',
                    m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'தவள',
                ),
                M3Text(m3Text: 'வெண்ணிறம்', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'பதம்',
                ),
                M3Text(m3Text: 'கால்கள்', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'நிகளம்',
                ),
                M3Text(m3Text: 'யானை காற்சங்கிலி (விலங்கு)', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'முளை',
                ),
                M3Text(m3Text: 'ஆணி', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'பழுத்த',
                ),
                M3Text(m3Text: 'ஞானம் கனிந்த', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'முது',
                ),
                M3Text(m3Text: 'பழைமை வாய்ந்த', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: '(ஒரு) கவிப்புலவன்',
                ),
                M3Text(m3Text: 'ஒப்பற்ற', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'வரை',
                ),
                M3Text(m3Text: 'மலை', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'அலகை',
                ),
                M3Text(m3Text: 'பேய்', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'முசித்து',
                ),
                M3Text(m3Text: 'மெலிந்து', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'அவுணர்',
                ),
                M3Text(m3Text: 'அசுரர்', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'உரம்',
                ),
                M3Text(m3Text: 'மார்பு', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'நிணம்',
                ),
                M3Text(m3Text: 'கொழுப்பு', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'முநி(வரர்) ',
                ),
                M3Text(m3Text: 'முனிவர்களுள் (சிறந்தவர்)', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'மகம்',
                ),
                M3Text(m3Text: 'வேள்வி, இன்பம்', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'விதி',
                ),
                M3Text(m3Text: 'பிரம்மா', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'நரர்',
                ),
                M3Text(m3Text: 'உலக மக்கள்', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'உறும்',
                ),
                M3Text(m3Text: 'நேரந்த/நேரும்/நேரப் போகும்', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'இடுக்கண்',
                ),
                M3Text(m3Text: 'துன்பம்', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'ஒழுக்கும்',
                ),
                M3Text(m3Text: 'பொழியும்', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'தழல்',
                ),
                M3Text(m3Text: 'நெருப்பு', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'இடர்',
                ),
                M3Text(m3Text: 'துன்பம்', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'அடுத்து / அடுத்த',
                ),
                M3Text(m3Text: 'நெருங்கி(ய)', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'உறுக்கி',
                ),
                M3Text(m3Text: 'உக்கிரம்', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'தருக்கி',
                ),
                M3Text(m3Text: 'இறுமாப்புடன்', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'நமன்',
                ),
                M3Text(m3Text: 'எமன்', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'முருக்க',
                ),
                M3Text(m3Text: 'அழிக்க', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'மதி',
                ),
                M3Text(m3Text: 'சந்திரன்', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'விறல்',
                ),
                M3Text(m3Text: 'பேராற்றல்', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'கழல்',
                ),
                M3Text(m3Text: 'திருவடி', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'தலம்',
                ),
                M3Text(m3Text: 'உலகம்', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'கணத் தொகுதி',
                ),
                M3Text(m3Text: 'உயிர்க் கூட்டம்', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'கமலம்',
                ),
                M3Text(m3Text: 'தாமரை மலர்', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'விதிர்க்க',
                ),
                M3Text(m3Text: 'அசைக்க', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'ஒரு',
                ),
                M3Text(m3Text: 'மேலான/சிறந்த', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'இரு புறத்தும்',
                ),
                M3Text(m3Text: 'முன்னும் பின்னும்', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'அருகு',
                ),
                M3Text(m3Text: 'அருகாமையில்', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'சலம்',
                ),
                M3Text(m3Text: 'கோபம்', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'சிவத்த (தொடை)',
                ),
                M3Text(m3Text: 'செந்நிற (பூ மாலை)', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'சிகையில்',
                ),
                M3Text(m3Text: 'தலை உச்சியில்', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'திரை',
                ),
                M3Text(m3Text: 'அலைகள் வீசும்', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'புனல்',
                ),
                M3Text(m3Text: 'நீர்', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'கடிது',
                ),
                M3Text(m3Text: 'விரைந்து', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'உதிரம்',
                ),
                M3Text(m3Text: 'இரத்தம்', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'கிரி',
                ),
                M3Text(m3Text: 'மலை', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'முதற் குலிசன்',
                ),
                M3Text(
                    m3Text: 'குலிசாயுதத்தை ஏந்திய (தேவேந்திரன்)',
                    m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'சிறை',
                ),
                M3Text(m3Text: 'இறக்கைகள்', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'முகடு',
                ),
                M3Text(m3Text: 'மலை உச்சி', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'அற',
                ),
                M3Text(m3Text: 'முழுமை/அளவில்லா', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: '(விசை)த்து',
                ),
                M3Text(m3Text: '(வேக)மாக', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'எயிறு',
                ),
                M3Text(m3Text: 'பற்கள் ', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'தெறிக்கவரம் =     +     ?',
                ),
                M3Text(m3Text: 'தெறிக்க + அரம்', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'பழுத்தமுது  =     +     ?',
                ),
                M3Text(m3Text: 'பழுத்த + முது', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'பசித்தலகை  =     +     ?',
                ),
                M3Text(m3Text: 'பசித்து  + அலகை', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'வடவாமுகாக்கினி  =     +     +     ?',
                ),
                M3Text(
                    m3Text: 'வடவை (பெண் குதிரை) + முகம் + அக்னி',
                    m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'கறுத்த குழல் - கருத்த குழல் : எது சரி?',
                ),
                M3Text(m3Text: 'கருத்த (பண்பு) + குழல்', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: '"காணும்" என்று முடியும் கண்ணிகளை நினைவு கூறவும்',
                ),
                M3Text(m3Text: 'பழுத்தமுது..., சொலற்கரிய...', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text:
                      'ஒரே சொல், இரு வேறு இடங்களில் இரு வேறு பொருள் தரும்படி அமைந்த ஒரு கண்ணியை நினைவு கூறவும்',
                ),
                M3Text(
                    m3Text: 'சுடர்ப்பரிதி ஒளிப்ப.. ஒளிப்பிரபை வீசும்',
                    m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: 'எந்த கண்ணியில் ஒரே சொல் அதிக முறை சொல்லப்படுகிறது?',
                ),
                M3Text(
                    m3Text: 'சுடர்ப்பரிதி ... (ஒளிப்ப-3 முறை)',
                    m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text:
                      'வேல் வகுப்பில் சரியாக மத்தியில் அமைந்துள்ள கண்ணிகளை நினைவு கூறவும்',
                ),
                M3Text(m3Text: 'சொலற்கரிய (8), தருக்கி (9)', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text:
                      '"அவுணர்" சொல் இடம்பெறும் இரு கண்ணிகளை நினைவு கூறவும்',
                ),
                M3Text(m3Text: 'பசித்தலகை...சினத்து அவுணர்', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text: '"விளையாடும் வேல்" கண்ணியை நினைவு கூறவும்',
                ),
                M3Text(
                    m3Text: 'திரைக்கடலை...உதிரம் நிறைத்து விளையாடும்',
                    m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text:
                      '16 கண்ணிகளில் எந்த ஒரு குறிப்பிட்ட சொல் அதிக கண்ணிகளில் இடம் பெற்றுள்ளது?',
                ),
                M3Text(m3Text: '"ஆகும்"', m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text:
                      'எந்த ஒரு கண்ணியிலும் ஒரு குறிப்பிட்ட நெடில்  எழுத்து  இடம் பெற்றிருக்கும். ஆனால் அது குறில் எழுத்து போலவே குறுகி ஒலிக்கும். அது எந்த எழுத்து?',
                ),
                M3Text(
                    m3Text:
                        '"ஐ"- சொல்லின் இடையிலோ கடையிலோ மட்டுமே வந்து (முதலில் வராமல்), ஒரு மாத்திரை அளவிற்கு குறுகி ஒலிக்கும்',
                    m3Color: qAnswer),
                SizedBox(height: 0.02.sw),
                const P3Text(
                  p3Text:
                      'எந்த ஒரு கண்ணியிலும், கடைசிச் சீரின் முதல் எழுத்து கண்டிப்பாக ________ (குறில்/நெடில்) எழுத்தாகத்தான் இருக்கும்',
                ),
                M3Text(m3Text: 'நெடில்', m3Color: qAnswer),
                SizedBox(height: 0.02.sh),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      buttonText: qAnswer ? 'மறு முயற்சி' : 'சரி பார்க்க',
                      buttonColor: Colors.deepPurple,
                      fontColor: Colors.white,
                      buttonWidth: 0.35.sw,
                      onPressed: () {
                        qReveal();
                      },
                    ),
                    CustomButton(
                      buttonText: 'முகப்பு',
                      buttonColor: Colors.green,
                      fontColor: Colors.white,
                      buttonWidth: 0.35.sw,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Choice()),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 0.01.sh,
                ),
                Text(
                    'இந்த பட்டியலில் சேர்க்கவோ, நீக்கவோ, திருத்தவோ விரும்பினால், அடியேனைத் தொடர்பு கொள்ளவும். மிக்க நன்றி\n',
                    style: TextStyle(
                      fontFamily: 'meera',
                      fontSize: 12.sp,
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                    textAlign: TextAlign.center),
                Text('rajarajan.seetharaman@gmail.com\n(+91-9487881870)\n',
                    style: TextStyle(
                      fontFamily: 'arial',
                      fontSize: 14.sp,
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                    textAlign: TextAlign.center),
                Text(
                    'குறிப்பு: "வேல் வகுப்பு" கண்ணிகளின் வரிசையை நினைவில் இருத்திக்கொள்ள "நினைவுக் குறிப்பு":\n\n',
                    style: TextStyle(
                      fontFamily: 'meera',
                      fontSize: 12.sp,
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                    textAlign: TextAlign.center),
                Text(
                    'பருப்பு, பனை வெல்லம், பழுத்த பழங்கள் வைத்து, பசிதம் (திருநீறு) பூசி, சுப்ரமணிய சுடர் ஒளியைத் துதிக்க, சொத்து சுகமெல்லாம் '
                    'தரும் தலமாம் தணிகை உறை, சலதாரி (கங்கையைத் தரித்தவன்), ஆதிரையான் (ஆதிரை நட்சத்திரத்திற்குரிய கடவுள்), திசைமுகன் (நான்முகனாகிய பிரம்மா) வணங்கும் '
                    'சிவ திருக்குமரன் வேல்.\n\n',
                    style: TextStyle(
                      fontFamily: 'meera',
                      fontSize: 12.sp,
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                    textAlign: TextAlign.center),
                SizedBox(
                  height: 0.02.sh,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
