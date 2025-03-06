import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class WorksMobile extends StatefulWidget {
  const WorksMobile({super.key});

  @override
  State<WorksMobile> createState() => _WorksMobileState();
}

class _WorksMobileState extends State<WorksMobile> {
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
          padding: EdgeInsets.only(left: 2.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SansBold(size: 35, text: "My Works"),
              Wrap(
                children: [
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
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                "assets/yt-music.png",
                                height: 200,
                                width: 300,
                              ),
                              BlogPost(
                                title: "Yt-Music Clone",
                                body:
                                    "Interactive music player built with HTML, CSS, and JS.\n"
                                    "Inspired by YT Music, featuring a sleek UI and smooth playback.\n"
                                    "Optimized for seamless user experience with dynamic animations.\n"
                                    "Custom-built with passion in just 16 hours.\n",
                              ),
                              GetLink(
                                  bgcolor: Colors.tealAccent,
                                  textcolor: Colors.black,
                                  title: "Check it",
                                  url: "https://github.com/Shainworks/ytmusic")
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
                                "assets/PES.png",
                                height: 200,
                                width: 300,
                                fit: BoxFit.contain,
                              ),
                              BlogPost(
                                title: "PES-STALK",
                                body:
                                    "Fetches student details seamlessly on input.\n"
                                    "Integrates MongoDB Atlas for efficient data retrieval.\n"
                                    "Dynamic UI displaying student images and information.\n"
                                    "Optimized backend ensuring quick response times.\n",
                              ),
                              GetLink(
                                  bgcolor: Colors.tealAccent,
                                  textcolor: Colors.black,
                                  title: "Check it",
                                  url:
                                      "https://pes-data-testing-git-main-shainworks-projects.vercel.app/")
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
                                "assets/Netflix.png",
                                height: 200,
                                width: 300,
                              ),
                              BlogPost(
                                title: "Netflix-Clone",
                                body:
                                    "Developed a seamless Netflix UI experience.\n"
                                    "Optimized performance for smooth content browsing.\n"
                                    "Integrated interactive elements for user engagement.\n"
                                    "Enhanced UI/UX with dynamic styling and animations.\n",
                              ),
                              GetLink(
                                  bgcolor: Colors.tealAccent,
                                  textcolor: Colors.black,
                                  title: "Check it",
                                  url: "https://github.com/Shainworks/Netflix")
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
                                "assets/portfolio.png",
                                height: 200,
                                width: 300,
                              ),
                              BlogPost(
                                title: "Personal Portfolio",
                                body:
                                    "Designed and developed a sleek portfolio with Flutter.\n"
                                    "Built using Dart for a smooth cross-platform experience.\n"
                                    "Showcasing projects with interactive UI elements.\n"
                                    "Optimized for responsiveness and seamless navigation.\n",
                              ),
                              GetLink(
                                  bgcolor: Colors.tealAccent,
                                  textcolor: Colors.black,
                                  title: "Check it",
                                  url: "https://darshan-m-s.web.app/")
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

class BlogPost extends StatefulWidget {
  final String title;
  final String body;
  const BlogPost({super.key, required this.title, required this.body});

  @override
  State<BlogPost> createState() => _BlogPostState();
}

class _BlogPostState extends State<BlogPost> {
  bool expand = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 20),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
              style: BorderStyle.solid, width: 1, color: Colors.black),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.tealAccent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: SansBold(size: 25, text: widget.title.toString()),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      expand = !expand;
                    });
                  },
                  icon: Icon(
                    Icons.arrow_drop_down_circle_outlined,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 7.0,
            ),
            Text(
              widget.body.toString(),
              style: GoogleFonts.openSans(fontSize: 15),
              maxLines: expand == true ? null : 1,
              overflow:
                  expand == true ? TextOverflow.visible : TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
