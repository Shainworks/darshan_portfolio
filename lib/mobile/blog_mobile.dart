import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class BlogMobile extends StatefulWidget {
  const BlogMobile({super.key});

  @override
  State<BlogMobile> createState() => _BlogMobileState();
}

class _BlogMobileState extends State<BlogMobile> {
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
    return SafeArea(
      child: Scaffold(
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
                  urlLauncher(
                      "assets/twitter.svg", "https://x.com/Darshan_ms_06")
                ],
              )
            ],
          ),
        ),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 500,
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(
                  size: 25,
                  color: Colors.black,
                ),
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background: Image.asset(
                    "assets/blog.jpg",
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
              )
            ];
          },
          body: StreamBuilder<QuerySnapshot>(
            stream:
                FirebaseFirestore.instance.collection('article').snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (BuildContext context, int index) {
                      DocumentSnapshot documentSnapshot =
                          snapshot.data!.docs[index];
                      return BlogPost(
                          title: documentSnapshot["title"],
                          body: documentSnapshot["body"]);
                    });
              } else
                return Center(
                  child: CircularProgressIndicator(),
                );
            },
          ),
        ),
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
      padding: EdgeInsets.only(left: 20, right: 20, top: 30),
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
                    color: Color(0xFFFAF3E0),
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
              maxLines: expand == true ? null : 3,
              overflow:
                  expand == true ? TextOverflow.visible : TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
