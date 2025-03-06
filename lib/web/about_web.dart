import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class AboutWeb extends StatefulWidget {
  const AboutWeb({super.key});

  @override
  State<AboutWeb> createState() => _AboutWebState();
}

class _AboutWebState extends State<AboutWeb> {
  urlLauncher(String ImgPath, String url) {
    return IconButton(
      icon: SvgPicture.asset(
        width: 35,
        ImgPath,
      ),
      onPressed: () async {
        await launchUrl(
          Uri.parse(url),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var devicewidth = MediaQuery.of(context).size.width;
    var deviceheight = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 72,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/God.jpg"),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SansBold(size: 30, text: "Darshan M S"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                urlLauncher(
                    "assets/github.svg", "https://github.com/Shainworks"),
                urlLauncher("assets/twitter.svg", "https://x.com/Darshan_ms_06")
              ],
            )
          ],
        ),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerboxisscrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 500,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(
                size: 25,
                color: Colors.black,
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/blog.jpg",
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
              title: Row(
                children: [
                  Spacer(
                    flex: 3,
                  ),
                  Tabweb(
                    title: "Home",
                    route: '/',
                  ),
                  Spacer(),
                  Tabweb(
                    title: "Works",
                    route: '/works',
                  ),
                  Spacer(),
                  Tabweb(
                    title: "Blogs",
                    route: '/blogs',
                  ),
                  Spacer(),
                  Tabweb(
                    title: "About",
                    route: '/about',
                  ),
                  Spacer(),
                  Tabweb(
                    title: "Contact",
                    route: '/contact',
                  ),
                  Spacer(),
                ],
              ),
            )
          ];
        },
        body: SingleChildScrollView(
          child: Container(
            height: deviceheight * 1.8, // Adjusted height to fit both sections
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: deviceheight / 1.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "assets/web.jpg",
                        height: devicewidth / 1.9,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SansBold(size: 40, text: "About me"),
                          SizedBox(
                            height: 15,
                          ),
                          Sans(
                            size: 15,
                            text:
                                "Tech enthusiast solving problems innovatively.\n"
                                "Award-winning developer excelling in UI.\n"
                                "Backend expert pushing technical boundaries.\n"
                                "Innovative full-stack development engineer.\n",
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 2,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                padding: EdgeInsets.all(3),
                                child: Sans(size: 15, text: "Flutter"),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 2,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                padding: EdgeInsets.all(3),
                                child: Sans(size: 15, text: "React"),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 2,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                padding: EdgeInsets.all(3),
                                child: Sans(size: 15, text: "Express"),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 2,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                padding: EdgeInsets.all(3),
                                child: Sans(size: 15, text: "Firebase"),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.tealAccent,
                                    width: 2,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                padding: EdgeInsets.all(3),
                                child: Sans(size: 15, text: "Tailwind"),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),

                // The beginning of the third part of the page (What I Do)
                Container(
                  height: deviceheight / 1.3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SansBold(size: 40, text: "What I Do?"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Card(
                            elevation: 30,
                            shadowColor: Colors.tealAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                              side: BorderSide(color: Colors.tealAccent),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    "assets/webL.png",
                                    height: 200,
                                    width: 200,
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  SansBold(size: 15, text: "Web Development")
                                ],
                              ),
                            ),
                          ),
                          Card(
                            elevation: 30,
                            shadowColor: Colors.tealAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                              side: BorderSide(color: Colors.tealAccent),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    "assets/app.png",
                                    height: 200,
                                    width: 200,
                                    fit: BoxFit.contain,
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  SansBold(size: 15, text: "App Development")
                                ],
                              ),
                            ),
                          ),
                          Card(
                            elevation: 30,
                            shadowColor: Colors.tealAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                              side: BorderSide(color: Colors.tealAccent),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    "assets/firebase.png",
                                    height: 200,
                                    width: 200,
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  SansBold(
                                      size: 15, text: "Back-end Development")
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
