import 'package:design_1/widgets/Backgroud.dart';
import 'package:design_1/widgets/card_table.dart';
import 'package:design_1/widgets/custom_bottom_navigation.dart';
import 'package:design_1/widgets/page_title.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //background
          Background(),
          //body
          _HomeBody()
          //navigation
        ],
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 80),
          // title page
          PageTitle(),

          SizedBox(height: 60),
          //table card
          CardTable()
        ],
      ),
    );
  }
}
