import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E - Konseling SMPN 5 Banyuwangi',
      debugShowCheckedModeBanner: false,
      home: SplashScreenPage(),
    );
  }
}

//Halaman Splash Screen
class SplashScreenPage extends StatefulWidget {
  SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return HomePage();
        }),
      );
    });
  }

//logo di dalam splash screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Image.asset(
          "images/logo.jpg",
          width: 400.0,
          height: 300.0,
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 54, 165, 255),
            title: Text("E- Konseling SMP Negeri 5 Banyuwangi"),
            centerTitle: true),
        body: Center(
          child: Text("E- Konseling SMP Negeri 5 Banyuwangi"),
        ));
  }
}

//Choice Page
class ChoicePage extends StatefulWidget {
  ChoicePage({Key? key}) : super(key: key);

  @override
  State<ChoicePage> createState() => _ChoicePageState();
}

class _ChoicePageState extends State<ChoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 54, 165, 255),
          title: Text("E- Konseling SMP Negeri 5 Banyuwangi"),
          centerTitle: true),
      body: Center(
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Container(
                      child: Column(
                        children: [
                          Column(
                            children: [
                              GestureDetector(
                                child: Container(
                                  child: Image.asset('images/profil.jpeg'),
                                  height: 200,
                                  width: 400,
                                  margin: EdgeInsets.all(10),
                                  padding: EdgeInsets.only(right: 25),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 200,
                                      height: 45,
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                          backgroundColor:
                                              Color.fromARGB(255, 54, 165, 255),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                        onPressed: _launch,
                                        child: Text(
                                          "Bu Tya",
                                          style: TextStyle(
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      GestureDetector(
                                        child: Container(
                                          child:
                                              Image.asset('images/profil.jpeg'),
                                          width: 300,
                                          height: 200,
                                          margin: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(40)),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 5, top: 10, bottom: 20),
                                        child: Column(
                                          children: [
                                            Container(
                                              width: 200,
                                              height: 45,
                                              child: TextButton(
                                                style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Color.fromARGB(
                                                          255, 54, 165, 255),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            SplashScreenPage()),
                                                  );
                                                },
                                                child: Text(
                                                  "Bu ...",
                                                  style: TextStyle(
                                                    color: Color(0xffffffff),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                          Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      GestureDetector(
                                        child: Container(
                                          child:
                                              Image.asset('images/profil.jpeg'),
                                          width: 300,
                                          height: 200,
                                          margin: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(40)),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 5, top: 10, bottom: 20),
                                        child: Column(
                                          children: [
                                            Container(
                                              width: 200,
                                              height: 45,
                                              child: TextButton(
                                                style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Color.fromARGB(
                                                          255, 54, 165, 255),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            SplashScreenPage()),
                                                  );
                                                },
                                                child: Text(
                                                  "Bu ...",
                                                  style: TextStyle(
                                                    color: Color(0xffffffff),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
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

//NavDrawer
class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              ' ',
              style:
                  TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 3, 110, 129),
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage('images/consult.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.phone_in_talk_rounded),
            title: Text('Konseling'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChoicePage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.menu_book_rounded),
            title: Text('E-Book'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Book()),
              );
            },
            ),
          ListTile(
            leading: Icon(Icons.games),
            title: Text('Games'),
            onTap: _launchURL,
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}

//Book Page
class Book extends StatefulWidget {
  Book({Key? key}) : super(key: key);

  @override
  State<Book> createState() => _BookState();
}

class _BookState extends State<Book> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 54, 165, 255),
          title: Text("E-Book"),
          centerTitle: true),
      body: Center(
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Container(
                      child: Column(
                        children: [
                          Column(
                            children: [
                              GestureDetector(
                                child: Container(
                                  child:
                                      Image.asset('images/digitallibrary.svg'),
                                  height: 200,
                                  width: 400,
                                  margin: EdgeInsets.all(10),
                                  padding: EdgeInsets.only(right: 25),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 200,
                                      height: 45,
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                          backgroundColor:
                                              Color.fromARGB(255, 54, 165, 255),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                        onPressed: digital(),
                                        child: Text(
                                          "Perpustakaan Digital",
                                          style: TextStyle(
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      GestureDetector(
                                        child: Container(
                                          child: Image.asset(
                                              'images/letsread.png'),
                                          width: 300,
                                          height: 200,
                                          margin: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(40)),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 5, top: 10, bottom: 20),
                                        child: Column(
                                          children: [
                                            Container(
                                              width: 200,
                                              height: 45,
                                              child: TextButton(
                                                style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Color.fromARGB(
                                                          255, 54, 165, 255),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                ),
                                                onPressed: letsread(),
                                                child: Text(
                                                  "Let's Read Asia",
                                                  style: TextStyle(
                                                    color: Color(0xffffffff),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                          Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      GestureDetector(
                                        child: Container(
                                          child: Image.asset(
                                              'images/roomtoread.svg'),
                                          width: 300,
                                          height: 200,
                                          margin: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(40)),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 5, top: 10, bottom: 20),
                                        child: Column(
                                          children: [
                                            Container(
                                              width: 200,
                                              height: 45,
                                              child: TextButton(
                                                style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Color.fromARGB(
                                                          255, 54, 165, 255),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                ),
                                                onPressed: literacy,
                                                child: Text(
                                                  "Ruang Membaca",
                                                  style: TextStyle(
                                                    color: Color(0xffffffff),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
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


//Link Launch WA
_launch() async {
  Uri _url = Uri.parse(
      'https://api.whatsapp.com/send?phone=6281216799462&text=Nama%20%3A%0AKelas%20%3A%0AKonsultasi%3A');
  if (await launchUrl(_url)) {
    await launchUrl(_url);
  } else {
    throw 'Could not launch $_url';
  }
}

//Link Game Page
_launchURL() async {
  Uri _url = Uri.parse('https://www.crazygames.co.id/game/liquid-puzzle');
  if (await launchUrl(_url)) {
    await launchUrl(_url);
  } else {
    throw 'Could not launch $_url';
  }
}

//Link Digital Book
digital() async {
  Uri _url = Uri.parse('https://digitallibrary.io/id/');
  if (await launchUrl(_url)) {
    await launchUrl(_url);
  } else {
    throw 'Could not launch $_url';
  }
}

//Link Lets Read Book
letsread() async {
  Uri _url = Uri.parse('https://www.letsreadasia.org/');
  if (await launchUrl(_url)) {
    await launchUrl(_url);
  } else {
    throw 'Could not launch $_url';
  }
}

//Link Literacy Book
literacy() async {
  Uri _url = Uri.parse('https://literacycloud.org/');
  if (await launchUrl(_url)) {
    await launchUrl(_url);
  } else {
    throw 'Could not launch $_url';
  }
}
