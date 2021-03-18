
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class SoshialBar extends StatelessWidget {
  final String quote;

  const SoshialBar(this.quote);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          InkWell(
            onTap: () async {
              String url =
                  'https://www.facebook.com/sharer/sharer.php?u=https://almashreqebookstore.com&quote=$quote';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            child: SvgPicture.asset(
              "assets/svg/facebook.svg",
              width: 30,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          InkWell(
            onTap: () async {
              String url = 'https://twitter.com/intent/tweet?text=$quote';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            child: SvgPicture.asset(
              "assets/svg/twitter.svg",
              width: 30,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          // InkWell(
          //   onTap: () async {
          //   },
          //   child: SvgPicture.asset(
          //     "assets/svg/instagram.svg",
          //     width: 30,
          //   ),
          // ),
          // SizedBox(
          //   width: 5,
          // ),
          InkWell(
            onTap: () async {
              String url = "https://t.me/share/url?url=${quote.replaceAll(RegExp(' '), '%20')}";
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            child: SvgPicture.asset(
              "assets/svg/telegram.svg",
              width: 30,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          InkWell(
            onTap: () async {
              String url = "https://wa.me/?text=$quote";
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            child: SvgPicture.asset(
              "assets/svg/whatsup.svg",
              width: 30,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          InkWell(
            onTap: () async {
              await Share.share(quote);
            },
            child: Icon(Icons.share,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
