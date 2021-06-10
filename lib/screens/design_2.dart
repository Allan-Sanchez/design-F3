import 'package:flutter/material.dart';

class ScreenDesign2 extends StatelessWidget {
  const ScreenDesign2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: ScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [Page1(), Page2()],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: null,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              'Bienvenido',
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
          ),
          style: TextButton.styleFrom(
              shape: StadiumBorder(), backgroundColor: Color(0xff0098FA)),
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [ImageBackground(), BodyInfo()],
    );
  }
}

class BodyInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
        color: Colors.white, fontSize: 70, fontWeight: FontWeight.bold);
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          Text(
            '11°',
            style: textStyle,
          ),
          Text(
            'Miercoles',
            style: textStyle,
          ),
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_down,
            size: 120,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class ImageBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff30BAD6),
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: Image(image: AssetImage('assets/img/scroll-1.png')));
  }
}
