import 'package:flutter/material.dart';

enum PageType {
  home,
  projects,
  contact,
}

AppBar commonAppBar(BuildContext context, PageType pageType) {
  // 공통 앱바 위젯을 완성해보세요.
  // selectedPage에 따라 텍스트를 강조해줍니다.
  // 예를 들어 selectedPage가 home이면, home 글씨를 강조해줍니다.
  return AppBar(
    backgroundColor: Color(0xFFF2F2F2),
    title: Row(
      spacing: 35,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, "/");
          },
          child: Text(
            "Home",
            style: TextStyle(
              fontSize: 16,
              color: pageType == PageType.home ? Color(0xFF6327E9) : Color(0xFF38393B),
              fontWeight: pageType == PageType.home ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, "/projects");
          },
          child: Text(
            "Projects",
            style: TextStyle(
              fontSize: 16,
              color: pageType == PageType.projects ? Color(0xFF6327E9) : Color(0xFF38393B),
              fontWeight: pageType == PageType.projects ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, "/contact");
          },
          child: Text(
            "Contact",
            style: TextStyle(
              fontSize: 16,
              color: pageType == PageType.contact ? Color(0xFF6327E9) : Color(0xFF38393B),
              fontWeight: pageType == PageType.contact ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ],
    ), // 완성해주세요,
    automaticallyImplyLeading: false,
    centerTitle: true,
  );
}
