import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class WorksWeb extends StatefulWidget {
  const WorksWeb({super.key});

  @override
  State<WorksWeb> createState() => _WorksWebState();
}

class _WorksWebState extends State<WorksWeb> {
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
            height: deviceheight * 2.8, // Adjusted height to fit both sections
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: deviceheight / 1.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "assets/yt-music.png",
                        width: devicewidth / 1.9,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SansBold(size: 40, text: "YT-Music Clone"),
                          SizedBox(
                            height: 15,
                          ),
                          Sans(
                            size: 15,
                            text:
                                "Interactive music player inspired by YT Music.\n"
                                "Built using HTML, CSS, and JavaScript.\n"
                                "Features seamless audio playback and UI animations.\n"
                                "Optimized for a smooth user experience.\n",
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              GetLink(
                                bgcolor: Colors.white,
                                textcolor: Colors.black,
                                title: "Check it",
                                url: 'https://github.com/Shainworks/ytmusic',
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: deviceheight / 1.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SansBold(size: 40, text: "PES-STALK"),
                          SizedBox(
                            height: 15,
                          ),
                          Sans(
                            size: 15,
                            text:
                                "Fetches student details seamlessly on input.\n"
                                "Integrates MongoDB Atlas for efficient data retrieval.\n"
                                "Dynamic UI displaying student images and information.\n"
                                "Optimized backend ensuring quick response times.\n",
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              GetLink(
                                  bgcolor: Colors.white,
                                  textcolor: Colors.black,
                                  title: "Check it",
                                  url:
                                      "https://pes-data-testing-git-main-shainworks-projects.vercel.app/")
                            ],
                          )
                        ],
                      ),
                      Image.asset(
                        "assets/PES.png",
                        width: devicewidth / 1.9,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: deviceheight / 1.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "assets/Netflix.png",
                        width: devicewidth / 1.9,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SansBold(size: 40, text: "Netflix Clone"),
                          SizedBox(
                            height: 15,
                          ),
                          Sans(
                            size: 15,
                            text:
                                "Developed a seamless Netflix UI experience.\n"
                                "Optimized performance for smooth content browsing.\n"
                                "Integrated interactive elements for user engagement.\n"
                                "Enhanced UI/UX with dynamic styling and animations.\n",
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              GetLink(
                                  bgcolor: Colors.white,
                                  textcolor: Colors.black,
                                  title: "Check it",
                                  url: "https://github.com/Shainworks/Netflix")
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: deviceheight / 1.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SansBold(size: 40, text: "Personal Portfolio"),
                          SizedBox(
                            height: 15,
                          ),
                          Sans(
                            size: 15,
                            text:
                                "Designed and developed a sleek portfolio with Flutter.\n"
                                "Built using Dart for a smooth cross-platform experience.\n"
                                "Showcasing projects with interactive UI elements.\n"
                                "Optimized for responsiveness and seamless navigation.\n",
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              GetLink(
                                  bgcolor: Colors.white,
                                  textcolor: Colors.black,
                                  title: "Check it",
                                  url: "https://darshan-m-s.web.app/")
                            ],
                          )
                        ],
                      ),
                      Image.asset(
                        "assets/portfolio.png",
                        width: devicewidth / 1.9,
                      ),
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
