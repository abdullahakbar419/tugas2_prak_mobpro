import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Profile());
}

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile',
      theme: ThemeData(scaffoldBackgroundColor: Colors.blue),
      /** Navigation Bar */
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0,
          leading: BackButton(
            color: Colors.white,
            onPressed: () {},
          ),
          title: const Text(
            'Profil',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.mode_edit,
                  color: Colors.white,
                ))
          ],
        ),
        body: Center(
          child: Column(
            children: [
              /** Photo Profile */
              Container(
                  margin: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(100),
                              topRight: Radius.circular(100),
                              bottomLeft: Radius.circular(100),
                              bottomRight: Radius.circular(100)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.6),
                                spreadRadius: 3,
                                blurRadius: 7,
                                offset: const Offset(0, 5))
                          ]),
                      child: Icon(
                        Icons.account_circle,
                        size: 100,
                      ))),
              /** Identity */
              Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Abdullah Akbar',
                    style: GoogleFonts.poppins(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
              /** Identitiy Collage Student */
              Container(
                margin: const EdgeInsets.fromLTRB(25, 30, 25, 0),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Nama Panggilan',
                          style: TextStyle(color: Colors.black),
                        ),
                        Row(
                          children: const [
                            Text(
                              'Abay',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 0.5,
                              style: BorderStyle.solid),
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Status Keaktifan',
                          style: TextStyle(color: Colors.black),
                        ),
                        Row(
                          children: const [
                            Text(
                              'Aktif',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 0.5,
                              style: BorderStyle.solid),
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'No Hp',
                          style: TextStyle(color: Colors.black),
                        ),
                        Row(
                          children: const [
                            Text(
                              '08xxxxxxxxxxx',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 0.5,
                              style: BorderStyle.solid),
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Email',
                          style: TextStyle(color: Colors.black),
                        ),
                        Row(
                          children: const [
                            Text(
                              'abdullahxxxxxxxxxx@unpak.xxx',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 0.5,
                              style: BorderStyle.solid),
                          color: Colors.black),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
