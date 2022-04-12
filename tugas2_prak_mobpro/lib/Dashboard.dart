import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Profile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(33, 150, 243, 1)),
      home: Scaffold(
        body: Column(
          children: [
            Container(
                width: 400,
                height: 200,
                margin: const EdgeInsets.all(40),
                padding: const EdgeInsets.fromLTRB(20, 30, 80, 20),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white,
                        width: 0.1,
                        style: BorderStyle.solid),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: Colors.white.withOpacity(0.1)),
                child: Expanded(
                    child: Column(
                  children: const [
                    Text(
                      'Cash On Delivery (COD) di Om Agus Setrika',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Lebih mudah dan aman melakukan pembayaran di Om Agus Setrika dengan metode COD',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ))),
            Stack(
              children: [
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    width: double.infinity,
                    height: 383,
                    color: Colors.white,
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(30, 60, 30, 80),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Icon(
                                  Icons.branding_watermark_outlined,
                                  size: 150,
                                ),
                                Icon(
                                  Icons.balance_outlined,
                                  size: 150,
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(55, 0, 40, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Paket',
                                  style: GoogleFonts.aBeeZee(fontSize: 30),
                                ),
                                Text('Regular',
                                    style: GoogleFonts.aBeeZee(fontSize: 30)),
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 350,
                      height: 50,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.account_balance_wallet_outlined,
                            size: 28,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Rp.',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12)),
                          Text(
                            '5.000.000',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Icon(
                            Icons.timelapse_outlined,
                            size: 28,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('1 Hour Remaining')
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const SizedBox(
                        height: 330,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style:
                                ElevatedButton.styleFrom(primary: Colors.white),
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.home,
                                  size: 30,
                                  color: Colors.black,
                                ),
                                Text(
                                  'Home',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style:
                                ElevatedButton.styleFrom(primary: Colors.white),
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.dashboard,
                                  size: 30,
                                  color: Colors.black,
                                ),
                                Text(
                                  'Dashboard',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style:
                                ElevatedButton.styleFrom(primary: Colors.white),
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.settings,
                                  size: 30,
                                  color: Colors.black,
                                ),
                                Text(
                                  'Settings',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Profile()));
                            },
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.account_circle,
                                  size: 30,
                                  color: Colors.black,
                                ),
                                Text(
                                  'Account',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
