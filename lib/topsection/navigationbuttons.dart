import 'package:flutter/material.dart';

class NavigationButtons extends StatefulWidget {

  const NavigationButtons({
    Key? key,
  }) : super(key: key);

  @override
  _NavigationButtonsState createState() => _NavigationButtonsState();
}

class _NavigationButtonsState extends State<NavigationButtons> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Container(
            width: 375,
            height: 56,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(color: Colors.white),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedTabIndex = 0;
                      });
                    },
                    child: Container(
                      height: 58,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(width: 187.50, height: 17),
                          Container(
                            height: 30,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 20,
                                  child: Text(
                                    'Профиль',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: selectedTabIndex == 0
                                          ? Colors.black
                                          : Colors.grey,
                                      fontSize: 16,
                                      fontFamily: 'SF Pro Text',
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: -0.40,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(width: 187.50, height: 2, color: selectedTabIndex == 0
                              ? Color(0xFF068441)
                              : Colors.white,),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 187.50,
                  top: 0,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedTabIndex = 1;
                      });
                    },
                    child: Container(
                      height: 58,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: selectedTabIndex == 1
                            ? Colors.white
                            : Colors.transparent,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(width: 187.50, height: 17),
                          Container(
                            height: 30,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 20,
                                  child: Text(
                                    'Настройки',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: selectedTabIndex == 1
                                          ? Colors.black
                                          : Colors.grey,
                                      fontSize: 16,
                                      fontFamily: 'SF Pro Text',
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: -0.40,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(width: 187.50, height: 2, color: selectedTabIndex == 1
                              ? Color(0xFF068441)
                              : Colors.white,),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}