import 'package:flutter/material.dart';
import 'package:myapp/Screens/login.dart';
import 'package:myapp/Screens/SettingPage.dart';
import 'package:myapp/Screens/PrivacyPolicy.dart';
import 'package:myapp/Screens/temperature.dart';
import 'package:myapp/components/bottomNav.dart';
import 'package:myapp/styles/appstyles.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  double tempurature = 50.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Dashboard'),
          backgroundColor: const Color(0xFF171724),
          actions: [popUpMenu()],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(
                  height: 120,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side:
                          const BorderSide(color: Color(0xff50BBF1), width: 2),
                    ),
                    color: const Color(0xFF263238),
                    // ignore: unnecessary_new
                    child: new InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Temperature()));
                      },
                      child: Row(
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 100,
                            height: 52,
                            child:
                                Image.asset('assets/images/dashboard/temp.png'),
                          ),

                          // Temperature col

                          Expanded(
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Temperature',
                                    style: AppStyles.whiteSizedTexts(20),
                                  ),
                                  Text(
                                    (tempurature > 40 ? 'Hot' : 'Normal'),
                                    style: AppStyles.whiteSizedColorTexts(
                                        15,
                                        tempurature > 40
                                            ? Colors.red
                                            : Colors.green),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          //values and response time dynamic content
                          Expanded(
                            child: Container(
                              // color: Colors.amber,
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '$tempurature' + '°C',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                    ),
                                  ),
                                  const Text(
                                    '10s ago',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 120,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side:
                          const BorderSide(color: Color(0xff50BBF1), width: 2),
                    ),
                    // shadowColor: Colors.blueAccent,
                    color: const Color(0xFF263238),
                    child: Row(
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 100,
                          height: 52,
                          child: Image.asset(
                              'assets/images/dashboard/humidity.png'),
                        ),

                        // Temperature col

                        Expanded(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Temperature',
                                  style: AppStyles.whiteSizedTexts(20),
                                ),
                                Text(
                                  (tempurature > 40 ? 'Hot' : 'Normal'),
                                  style: AppStyles.whiteSizedColorTexts(
                                      15,
                                      tempurature > 40
                                          ? Colors.red
                                          : Colors.green),
                                ),
                              ],
                            ),
                          ),
                        ),

                        //values and response time dynamic content
                        Expanded(
                          child: Container(
                            // color: Colors.amber,
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '$tempurature' + '°C',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                  ),
                                ),
                                const Text(
                                  '10s ago',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 120,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side:
                          const BorderSide(color: Color(0xff50BBF1), width: 2),
                    ),
                    // shadowColor: Colors.blueAccent,
                    color: const Color(0xFF263238),
                    child: Row(
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 100,
                          height: 52,
                          child:
                              Image.asset('assets/images/dashboard/noise.png'),
                        ),

                        // Temperature col

                        Expanded(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Temperature',
                                  style: AppStyles.whiteSizedTexts(20),
                                ),
                                Text(
                                  (tempurature > 40 ? 'Hot' : 'Normal'),
                                  style: AppStyles.whiteSizedColorTexts(
                                      15,
                                      tempurature > 40
                                          ? Colors.red
                                          : Colors.green),
                                ),
                              ],
                            ),
                          ),
                        ),

                        //values and response time dynamic content
                        Expanded(
                          child: Container(
                            // color: Colors.amber,
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '$tempurature' + '°C',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                  ),
                                ),
                                const Text(
                                  '10s ago',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 120,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side:
                          const BorderSide(color: Color(0xff50BBF1), width: 2),
                    ),
                    // shadowColor: Colors.blueAccent,
                    color: const Color(0xFF263238),
                    child: Row(
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 100,
                          height: 52,
                          child: Image.asset(
                              'assets/images/dashboard/lightbulb.png'),
                        ),

                        // Temperature col

                        Expanded(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Temperature',
                                  style: AppStyles.whiteSizedTexts(20),
                                ),
                                Text(
                                  (tempurature > 40 ? 'Hot' : 'Normal'),
                                  style: AppStyles.whiteSizedColorTexts(
                                      15,
                                      tempurature > 40
                                          ? Colors.red
                                          : Colors.green),
                                ),
                              ],
                            ),
                          ),
                        ),

                        //values and response time dynamic content
                        Expanded(
                          child: Container(
                            // color: Colors.amber,
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '$tempurature °C',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                  ),
                                ),
                                const Text(
                                  '10s ago',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void selectedItem(BuildContext context, item) {
    switch (item) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => SettingPage()));
        break;
      case 1:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => PrivacyPolicy()));
        break;
      case 2:
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => LoginScreen()),
            (route) => false);
        break;
    }
  }

  Widget popUpMenu() {
    return PopupMenuButton<int>(
      color: Colors.black,
      itemBuilder: (context) => [
        PopupMenuItem<int>(
            value: 0,
            child: Text(
              "Setting",
              style: AppStyles.whiteMenuTexts,
            )),
        PopupMenuItem<int>(
            value: 1,
            child: Text(
              "Privacy Policy page",
              style: AppStyles.whiteMenuTexts,
            )),
        const PopupMenuDivider(),
        PopupMenuItem<int>(
            value: 2,
            child: Row(
              children: [
                const Icon(
                  Icons.logout,
                ),
                const SizedBox(
                  width: 7,
                ),
                Text("Logout", style: AppStyles.whiteMenuTexts)
              ],
            )),
      ],
      onSelected: (item) => selectedItem(context, item),
    );
  }
}
