import 'package:flutter/material.dart';
import 'package:zephyr_app/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({this.onChanged});

  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgXmlid195,
      type: BottomBarEnum.Xmlid195,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgXmlid98,
      type: BottomBarEnum.Xmlid98,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgXmlid95,
      type: BottomBarEnum.Xmlid95,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgXmlid98,
      type: BottomBarEnum.Xmlid98,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgXmlid196,
      type: BottomBarEnum.Xmlid196,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgXmlid196,
      type: BottomBarEnum.Xmlid196,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgXmlid196,
      type: BottomBarEnum.Xmlid196,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgCoursesYellow900,
      type: BottomBarEnum.Coursesyellow900,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgCommunity,
      type: BottomBarEnum.Community,
      isPng: true,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstant.whiteA700,
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              svgPath: bottomMenuList[index].isPng == true
                  ? null
                  : bottomMenuList[index].icon,
              imagePath: bottomMenuList[index].isPng == true
                  ? bottomMenuList[index].icon
                  : null,
              height: getVerticalSize(
                2,
              ),
              width: getHorizontalSize(
                1,
              ),
              color: ColorConstant.indigo900,
            ),
            activeIcon: CustomImageView(
              svgPath: bottomMenuList[index].isPng == true
                  ? null
                  : bottomMenuList[index].icon,
              imagePath: bottomMenuList[index].isPng == true
                  ? bottomMenuList[index].icon
                  : null,
              height: getVerticalSize(
                4,
              ),
              width: getHorizontalSize(
                6,
              ),
              color: ColorConstant.gray50,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          onChanged!(bottomMenuList[index].type);
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Xmlid195,
  Xmlid98,
  Xmlid95,
  Xmlid196,
  Coursesyellow900,
  Community,
}

class BottomMenuModel {
  BottomMenuModel({required this.icon, required this.type, this.isPng = false});

  String icon;

  BottomBarEnum type;

  bool isPng;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
