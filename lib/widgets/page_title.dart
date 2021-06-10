import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Classify Transaction',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Classify this transaction  into a particular category',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                )),
          ],
        ),
      ),
    );
  }
}
