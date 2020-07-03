import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:adobe_xd/page_link.dart';
import './Home.dart';

class iPhoneXXS11Pro1 extends StatelessWidget {
  iPhoneXXS11Pro1({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(-133.0, -50.0),
            child:
                // Adobe XD layer: 'breakfast-801827_12…' (shape)
                Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  width: 1294.0,
                  height: 862.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage(''),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  left: -8.0,
                  top: -8.0,
                  width: 1310.0,
                  height: 878.5,
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ui.ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
                      child: Container(color: const Color(0x00000000)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 571.0),
            child: Container(
              width: 375.0,
              height: 241.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(28.0, 745.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Home(),
                ),
              ],
              child: Container(
                width: 320.0,
                height: 46.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: const Color(0xffe0ef0f),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(28.0, 625.0),
            child: Container(
              width: 320.0,
              height: 46.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: const Color(0xfff1f1f1),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(28.0, 684.0),
            child: Container(
              width: 320.0,
              height: 46.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: const Color(0xfff1f1f1),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
