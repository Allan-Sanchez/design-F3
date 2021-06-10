import 'package:flutter/material.dart';

class ScreenDesign1 extends StatelessWidget {
  const ScreenDesign1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(
              'https://images.unsplash.com/photo-1457364887197-9150188c107b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'),
          _TitleSection(),
          _ButtonSection(),
          Container(
            padding: EdgeInsets.all(30.0),
            child: Column(
              children: [
                Text(
                    'farm out hunt trap barn relationship forgot badly explain poetry exercise surprise vegetable health mad choice announced slight city below tune push straight they,serve appearance do fewer cost topic origin river yesterday ought fear running pilot box both row pitch shore dirty scientist feel author religious millporch mind food mouth arrow trouble student country least mile fighting wild naturally sudden accurate compare skill eat round customs drove whenever hat changingblood up impossible master locate distance tape passage mirror broad hide time taken brother zero cookies quiet carry hay price spent caught atomic shinning'),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                    'farm out hunt trap barn relationship forgot badly explain poetry exercise surprise vegetable health mad choice announced slight city below tune push straight they,serve appearance do fewer cost topic origin river yesterday ought fear running pilot box both row pitch shore dirty scientist feel author religious millporch mind food mouth arrow trouble student country least mile fighting wild naturally sudden accurate compare skill eat round customs drove whenever hat changingblood up impossible master locate distance tape passage mirror broad hide time taken brother zero cookies quiet carry hay price spent caught atomic shinning')
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _TitleSection extends StatelessWidget {
  const _TitleSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lawrence Armstrong - United Arab Emirates',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text('Luella Peterson - Jersey',
                    style: Theme.of(context).textTheme.subtitle1)
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Icon(
                  Icons.star_rate,
                  color: Colors.red[600],
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text('41')
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _ButtonSection extends StatelessWidget {
  const _ButtonSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _MyButtonContainer(
            icon: Icons.call,
            iconName: 'CALL',
          ),
          _MyButtonContainer(
            icon: Icons.send_sharp,
            iconName: 'ROUTE',
          ),
          _MyButtonContainer(
            icon: Icons.share,
            iconName: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class _MyButtonContainer extends StatelessWidget {
  final IconData icon;
  final String iconName;
  const _MyButtonContainer({
    Key key,
    @required this.icon,
    @required this.iconName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          this.icon,
          color: Colors.blue[400],
        ),
        SizedBox(height: 10.0),
        Text(
          this.iconName,
          style: TextStyle(color: Colors.blue[400]),
        ),
      ],
    );
  }
}
