import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Tabweb extends StatefulWidget {
  final String title;
  final String route;
  const Tabweb({required this.title, super.key, required this.route});

  @override
  State<Tabweb> createState() => _TabState();
}

class _TabState extends State<Tabweb> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(widget.route);
      },
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            isSelected = true;
          });
        },
        onExit: (_) {
          setState(() {
            isSelected = false;
          });
        },
        child: AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 500),
          style: isSelected
              ? GoogleFonts.oswald(
                  shadows: [
                      Shadow(
                        color: Colors.black,
                        offset: Offset(0, -7),
                      ),
                    ],
                  color: Colors.transparent,
                  fontSize: 25.0,
                  decoration: TextDecoration.underline,
                  decorationThickness: 1,
                  decorationColor: Colors.tealAccent)
              : GoogleFonts.oswald(color: Colors.black, fontSize: 23.0),
          child: Text(
            widget.title,
          ),
        ),
      ),
    );
  }
}

class SansBold extends StatelessWidget {
  final String text;
  final double size;
  const SansBold({required this.size, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontWeight: FontWeight.bold, fontSize: size),
    );
  }
}

class Sans extends StatelessWidget {
  final String text;
  final double size;
  const Sans({required this.size, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size),
    );
  }
}

class Forms extends StatelessWidget {
  final String Heading;
  final String hinttext;
  final int maxline;
  final double width;
  final controller;
  final validator;
  const Forms(
      {required this.Heading,
      required this.hinttext,
      required this.maxline,
      required this.width,
      super.key,
      this.controller,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(size: 16.0, text: Heading),
        SizedBox(
          height: 15,
        ),
        SizedBox(
          width: width,
          child: TextFormField(
            controller: controller,
            validator: validator,
            // inputFormatters: [
            //   FilteringTextInputFormatter.allow(RegExp('[a-z]')),
            //   LengthLimitingTextInputFormatter(2)
            // ],
            maxLines: maxline,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.teal),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.tealAccent),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.tealAccent, width: 2),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              hintText: hinttext,
              hintStyle: GoogleFonts.poppins(),
              hintFadeDuration: Duration(milliseconds: 200),
            ),
          ),
        ),
      ],
    );
  }
}

class TabMobile extends StatefulWidget {
  final String text;
  final String route;
  const TabMobile({super.key, required this.text, required this.route});

  @override
  State<TabMobile> createState() => _TabMobileState();
}

class _TabMobileState extends State<TabMobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9),
        ),
        height: 50,
        minWidth: 200,
        color: Colors.black,
        child: Text(
          widget.text,
          style: GoogleFonts.oswald(fontSize: 20, color: Colors.white),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(widget.route);
        });
  }
}

class GetLink extends StatefulWidget {
  final Color bgcolor;
  final Color textcolor;
  final String title;
  final String url;
  const GetLink(
      {super.key,
      required this.bgcolor,
      required this.textcolor,
      required this.title,
      required this.url});

  @override
  State<GetLink> createState() => _GetLinkState();
}

class _GetLinkState extends State<GetLink> {
  late Color bgcolor;
  late Color textcolor;
  late String title;
  @override
  void initState() {
    bgcolor = widget.bgcolor;
    textcolor = widget.textcolor;
    title = widget.title;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await launchUrl(
          Uri.parse(widget.url),
        );
      },
      child: MouseRegion(
        onHover: (_) {
          setState(() {
            bgcolor = Colors.tealAccent;
            textcolor = Colors.black;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.tealAccent,
              width: 2,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(9),
            color: bgcolor,
          ),
          padding: EdgeInsets.all(3),
          child: Text(
            title,
            style: GoogleFonts.openSans(fontSize: 15, color: textcolor),
          ),
        ),
      ),
    );
  }
}

class AddDataFirestore {
  final CollectionReference response =
      FirebaseFirestore.instance.collection('messages');

  // Method for adding response data to Firestore
  Future<bool> addResponse(String firstName, String lastName, String email,
      String phoneNumber, String message) async {
    try {
      await response.add({
        'first name': firstName,
        'last name': lastName,
        'email': email,
        'phone number': phoneNumber,
        'message': message,
      });
      return true;
    } catch (error) {
      return false;
    }
  }
}
