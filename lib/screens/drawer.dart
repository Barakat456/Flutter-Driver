// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_declarations, non_constant_identifier_names, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trans_app/drawer_pages/Profile.dart';
import 'package:trans_app/drawer_pages/people.dart';
//import 'package:path/path.dart';

class InterFaceDriver extends StatefulWidget {
  @override
  State<InterFaceDriver> createState() => _InterFaceDriverState();
}

class _InterFaceDriverState extends State<InterFaceDriver> {
  final Padding = EdgeInsets.symmetric(horizontal: 10);

  int index = 0;
  final screens = [
    Center(
        child: Text(
      'طلبات التوصيلات',
      style: TextStyle(
        fontSize: 60,
        fontFamily: 'Tajawal',
      ),
    )),
    Center(
        child: Text(
      'ارباحي',
      style: TextStyle(
        fontSize: 72,
        fontFamily: 'Tajawal',
      ),
    )),
    Center(
        child: Text(
      'التقييم',
      style: TextStyle(
        fontSize: 72,
        fontFamily: 'Tajawal',
      ),
    )),
    Center(
        child: Text(
      'محفظتي',
      style: TextStyle(
        fontSize: 72,
        fontFamily: 'Tajawal',
      ),
    )),
  ];

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Color.fromRGBO(245, 127, 23, 1),
    ));
    final name = 'محمد بركات';
    final email = 'Mohamed.barakat527@gmail.com';
    final imageAsset = 'assets/images/man.png';
    return Container(
        child: Material(
      child: Scaffold(
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
              indicatorColor: Colors.blue.shade100,
              labelTextStyle: MaterialStateProperty.all(
                TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              )),
          child: NavigationBar(
            height: 70,
            backgroundColor: Color.fromRGBO(245, 127, 23, 1),
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            animationDuration: Duration(seconds: 2),
            selectedIndex: index,
            onDestinationSelected: (index) =>
                setState(() => this.index = index),
            destinations: [
              NavigationDestination(
                  icon: Icon(Icons.list_alt_outlined),
                  selectedIcon: Icon(Icons.list_alt_sharp),
                  label: 'طلبات التوصيلات'),
              NavigationDestination(
                  icon: Icon(Icons.attach_money_outlined),
                  selectedIcon: Icon(Icons.attach_money),
                  label: 'ارباحي'),
              NavigationDestination(
                  icon: Icon(Icons.star_border),
                  selectedIcon: Icon(Icons.star),
                  label: 'التقييم'),
              NavigationDestination(
                  icon: Icon(Icons.account_balance_wallet_outlined),
                  selectedIcon: Icon(Icons.account_balance_wallet),
                  label: 'محفظتي'),
            ],
          ),
        ),
        // appBar: AppBar(title: Text("Map")),
        body: Stack(
          children: [
            screens[index],
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Builder(
                  builder: (context) => Container(
                    padding: EdgeInsets.fromLTRB(0, 40, 20, 0),
                    child: FloatingActionButton(
                      child: Icon(
                        Icons.menu,
                        color: Color.fromRGBO(245, 127, 23, 1),
                      ),
                      backgroundColor: Colors.white,
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 215, 114, 25),
          child: ListView(
            // padding: EdgeInsets.zero,
            children: <Widget>[
              buildHeader(
                imageAsset: imageAsset,
                name: name,
                email: email,
                onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProfilePage(
                    name: name,
                    imageAsset: imageAsset,
                  ),
                )),
              ),
              const SizedBox(
                height: 5,
              ),
              buildMenuItem(
                text: 'المدينة',
                icon: Icons.business_outlined,
                onClicked: () => selectedItem(context, 0),
              ),
              const SizedBox(
                height: 20,
              ),
              buildMenuItem(
                text: 'تاريخ الطلب',
                icon: Icons.access_time_outlined,
              ),
              const SizedBox(
                height: 20,
              ),
              buildMenuItem(
                text: 'بين المدن',
                icon: Icons.public_rounded,
              ),
              const SizedBox(
                height: 20,
              ),
              buildMenuItem(
                text: 'الأمان',
                icon: Icons.privacy_tip_outlined,
              ),
              const SizedBox(
                height: 20,
              ),
              buildMenuItem(
                text: 'الإعدادات',
                icon: Icons.settings,
                onClicked: () => selectedItem(context, 0),
              ),
              Divider(
                color: Colors.white70,
              ),
              const SizedBox(
                height: 20,
              ),
              buildMenuItem(
                text: 'عن التطبيق',
                icon: Icons.priority_high_rounded,
              ),
              const SizedBox(
                height: 20,
              ),
              buildMenuItem(
                text: 'الدعم',
                icon: Icons.chat,
              ),
            ],
          ),
        ),
      ),
    ));
  }

  Widget buildHeader({
    required String imageAsset,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: Padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                child: Image.asset(imageAsset),
                //  backgroundImage: NetworkImage(imageAsset),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    email,
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(
        text,
        style: TextStyle(color: color),
      ),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int i) {
    switch (i) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PeoplePage(),
        ));
        break;
    }
  }
}
