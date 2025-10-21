import 'package:flutter/material.dart';
import 'package:flutter_base_project/design/values/colors/colors_default_key.dart';
import 'package:flutter_base_project/design/values/typography/fonts_key.dart';
import 'package:flutter_base_project/design/values/images/images_key.dart';
import 'package:flutter_base_project/design/design_system/text_style_key.dart';
import 'package:flutter_base_project/utils/widget_responsive.dart';
import 'package:flutter_svg/svg.dart';

class CRBottomNav extends StatelessWidget {
  const CRBottomNav(
      {super.key, required this.onTap, required this.selectedIndex});

  final Function(int index) onTap;
  final int selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: (int index) {
            onTap.call(index);
          },
          backgroundColor: CRColorsDefault.bottomNavBackground,
          selectedLabelStyle:
              CRTextStyleKey.caption.modify(fontFamily: CRFontFamily.inter),
          unselectedLabelStyle:
              CRTextStyleKey.caption.modify(fontFamily: CRFontFamily.inter),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: CRColorsDefault.primary,
          unselectedItemColor: CRColorsDefault.grey,
          items: _setupBottomNav(context)),
    );
  }
}

List<BottomNavigationBarItem> _setupBottomNav(BuildContext context) {
  final List<BottomNavigationBarItem> listBottomNav = <BottomNavigationBarItem>[
    _homeMenu(context),
    _bookmarkMenu(context),
    _calendarMenu(context),
    _historyMenu(context),
    _profileMenu(context)
  ];
  return listBottomNav;
}

BottomNavigationBarItem _homeMenu(BuildContext context) {
  return BottomNavigationBarItem(
    icon: Padding(
      padding: EdgeInsets.only(bottom: Adaptive.of(context).height(2.0)),
      child: SvgPicture.asset(CRIcons.home),
    ),
    activeIcon: Padding(
      padding: EdgeInsets.only(bottom: Adaptive.of(context).height(2.0)),
      child: SvgPicture.asset(CRIcons.home, color: CRColorsDefault.primary),
    ),
    label: "Home",
  );
}

BottomNavigationBarItem _bookmarkMenu(BuildContext context) {
  return BottomNavigationBarItem(
    icon: Padding(
      padding: EdgeInsets.only(bottom: Adaptive.of(context).height(2.0)),
      child: SvgPicture.asset(CRIcons.bookmark),
    ),
    activeIcon: Padding(
      padding: EdgeInsets.only(bottom: Adaptive.of(context).height(2.0)),
      child: SvgPicture.asset(CRIcons.bookmark, color: CRColorsDefault.primary),
    ),
    label: "Disimpan",
  );
}

BottomNavigationBarItem _calendarMenu(BuildContext context) {
  return BottomNavigationBarItem(
    icon: Padding(
      padding: EdgeInsets.only(bottom: Adaptive.of(context).height(2.0)),
      child: SvgPicture.asset(CRIcons.calendar),
    ),
    activeIcon: Padding(
      padding: EdgeInsets.only(bottom: Adaptive.of(context).height(2.0)),
      child: SvgPicture.asset(CRIcons.calendar, color: CRColorsDefault.primary),
    ),
    label: "Kalender",
  );
}

BottomNavigationBarItem _historyMenu(BuildContext context) {
  return BottomNavigationBarItem(
    icon: Padding(
      padding: EdgeInsets.only(bottom: Adaptive.of(context).height(2.0)),
      child: SvgPicture.asset(CRIcons.history),
    ),
    activeIcon: Padding(
      padding: EdgeInsets.only(bottom: Adaptive.of(context).height(2.0)),
      child: SvgPicture.asset(CRIcons.history, color: CRColorsDefault.primary),
    ),
    label: "Riwayat",
  );
}

BottomNavigationBarItem _profileMenu(BuildContext context) {
  return BottomNavigationBarItem(
    icon: Padding(
      padding: EdgeInsets.only(bottom: Adaptive.of(context).height(2.0)),
      child: SvgPicture.asset(CRIcons.profile),
    ),
    activeIcon: Padding(
      padding: EdgeInsets.only(bottom: Adaptive.of(context).height(2.0)),
      child: SvgPicture.asset(CRIcons.profile, color: CRColorsDefault.primary),
    ),
    label: "Profil",
  );
}

BottomNavigationBarItem _favoriteMenu(BuildContext context) {
  return BottomNavigationBarItem(
    icon: Padding(
      padding: EdgeInsets.only(bottom: Adaptive.of(context).height(2.0)),
      child: SvgPicture.asset("CRIcons.profile"),
    ),
    activeIcon: Padding(
      padding: EdgeInsets.only(bottom: Adaptive.of(context).height(2.0)),
      child:
          SvgPicture.asset("CRIcons.profile", color: CRColorsDefault.primary),
    ),
    label: "Profile",
  );
}
