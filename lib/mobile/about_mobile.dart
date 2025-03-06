import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({super.key});

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
  urlLauncher(String ImgPath, String url) {
    return IconButton(
      icon: SvgPicture.asset(
        ImgPath,
        width: 35,
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
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      endDrawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DrawerHeader(
              padding: EdgeInsets.only(bottom: 20),
              child: Container(
                width: 280, // Set width
                height: 280, // Set height
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2.0, color: Colors.black),
                  image: DecorationImage(
                    image: AssetImage("assets/God.jpg"),
                    fit: BoxFit
                        .contain, // Ensures the image covers the circle properly
                  ),
                ),
              ),
            ),
            TabMobile(text: "Home", route: "/"),
            SizedBox(
              height: 15,
            ),
            TabMobile(text: "Works", route: "/works"),
            SizedBox(
              height: 15,
            ),
            TabMobile(text: "Blogs", route: "/blogs"),
            SizedBox(
              height: 15,
            ),
            TabMobile(text: "About", route: "/about"),
            SizedBox(
              height: 15,
            ),
            TabMobile(text: "Contact", route: "/contact"),
            SizedBox(
              height: 40,
            ),
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
            )
          ];
        },
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SansBold(size: 35, text: "About me"),
              Sans(
                size: 15,
                text: "Tech enthusiast solving problems innovatively.",
              ),
              Sans(
                size: 15,
                text: "Award-winning developer excelling in UI.",
              ),
              Sans(
                size: 15,
                text: "Backend expert pushing technical boundaries.",
              ),
              Sans(
                size: 15,
                text: "Innovative full-stack development engineer.",
              ),
              SizedBox(
                height: 10,
              ),
              Wrap(
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
                    height: 60,
                  ),
                  //This is the third section
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/webL.png",
                                height: 200,
                                width: 300,
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              SansBold(size: 15, text: "Web Development")
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 35,
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/app.png",
                                height: 200,
                                width: 300,
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
                      SizedBox(
                        height: 35,
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/firebase.png",
                                height: 200,
                                width: 300,
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              SansBold(size: 15, text: "Back-end Development")
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
