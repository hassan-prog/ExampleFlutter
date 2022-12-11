// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
        automaticallyImplyLeading: false,
        centerTitle: true,
        // actions: [
        //   IconButton(
        //       onPressed: () async {
        //         final prefs = await SharedPreferences.getInstance();
        //         prefs.setBool('showHome', false);
        //
        //         Navigator.of(context).pushReplacement(
        //             MaterialPageRoute(builder: (context) => OnBording()));
        //       },
        //       icon: const Icon(Icons.logout))
        // ],
      ),
      body: Container(
        // color: Colors.grey,
        width: double.infinity,
        padding: EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(5),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'About App',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.circular(20),
                //   color: Colors.blue,
                // ),
                child: Text(
                  'A social media app used to upload single or multiple designs in the post with a description',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(5),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Developed by',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                'https://avatars.githubusercontent.com/u/51864970?v=4'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              padding: EdgeInsets.all(3),
                              child: Text(
                                'Mohammed Ibrahim',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.blue),
                              )),
                          Text(
                            'Flutter Developer',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                'https://avatars.githubusercontent.com/u/55570333?v=4'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              padding: EdgeInsets.all(3),
                              child: Text(
                                'Hassan Elsayed',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.blue),
                              )),
                          Text(
                            'Flutter Developer',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      AboutProfile(
                        'Hazem Sief',
                        'assets/images/hazem.jpg',
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      AboutProfile(
                        'Ahmed Abdelmaqsod',
                        'assets/images/abdelmaksoud.jpg',
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      AboutProfile(
                        'Mohamed Adel',
                        'assets/images/mohamed-adel.jpg',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutProfile extends StatelessWidget {
  final String name;
  final String image;

  AboutProfile(this.name, this.image);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage(image),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            padding: EdgeInsets.all(3),
            child: Text(
              name,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.blue),
            )),
        Text(
          'Flutter Developer',
          style: TextStyle(
            fontSize: 12,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
