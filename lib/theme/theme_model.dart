import 'package:flutter/material.dart';
import 'package:sablond/theme/storageManager.dart';
import 'my_colors.dart';

class ThemeNotifier with ChangeNotifier {
  // final darkTheme = ThemeData(
  //   primarySwatch: Colors.grey,
  //   primaryColor: Colors.black,
  //   brightness: Brightness.dark,
  //   backgroundColor: const Color(0xFF212121),
  //   accentColor: Colors.white,
  //   accentIconTheme: IconThemeData(color: Colors.black),
  //   dividerColor: Colors.black12,
  //   scaffoldBackgroundColor: Color(0xFF1D1D1D),
  // );
  final darkTheme = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Color(0xFF1D1D1D),
      backgroundColor: Colors.black);

  final ThemeData maviTheme = ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.light,
    primaryColor: Color(0xff2196f3),
    primaryColorBrightness: Brightness.dark,
    primaryColorLight: Color(0xffbbdefb),
    primaryColorDark: Color(0xff1976d2),
    accentColor: Color(0xff2196f3),
    accentColorBrightness: Brightness.dark,
    canvasColor: Color(0xfffafafa),
    scaffoldBackgroundColor: Color(0xFFFFFFFF),
    bottomAppBarColor: Color(0xffffffff),
    cardColor: Color(0xffffffff),
    dividerColor: Color(0x1f000000),
    highlightColor: Color(0x66bcbcbc),
    splashColor: Color(0x66c8c8c8),
    selectedRowColor: Color(0xfff5f5f5),
    unselectedWidgetColor: Color(0x8a000000),
    disabledColor: Color(0x61000000),
    buttonColor: Color(0xffe0e0e0),
    toggleableActiveColor: Color(0xff1e88e5),
    secondaryHeaderColor: Color(0xffe3f2fd),
    backgroundColor: Color(0xff90caf9),
    dialogBackgroundColor: Color(0xffffffff),
    indicatorColor: Color(0xff2196f3),
    hintColor: Color(0x8a000000),
    errorColor: Color(0xffd32f2f),
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.normal,
      minWidth: 88,
      height: 36,
      padding: EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Color(0xff000000),
          width: 0,
          style: BorderStyle.none,
        ),
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
      ),
      alignedDropdown: false,
      buttonColor: Color(0xffe0e0e0),
      disabledColor: Color(0x61000000),
      highlightColor: Color(0x29000000),
      splashColor: Color(0x1f000000),
      focusColor: Color(0x1f000000),
      hoverColor: Color(0x0a000000),
      colorScheme: ColorScheme(
        primary: Color(0xff2196f3),
        primaryVariant: Color(0xff1976d2),
        secondary: Color(0xff2196f3),
        secondaryVariant: Color(0xff1976d2),
        surface: Color(0xffffffff),
        background: Color(0xff90caf9),
        error: Color(0xffd32f2f),
        onPrimary: Color(0xffffffff),
        onSecondary: Color(0xffffffff),
        onSurface: Color(0xff000000),
        onBackground: Color(0xffffffff),
        onError: Color(0xffffffff),
        brightness: Brightness.light,
      ),
    ),
    
    iconTheme: IconThemeData(
      color: Color(0xdd000000),
      opacity: 1,
      size: 24,
    ),
    primaryIconTheme: IconThemeData(
      color: Color(0xffffffff),
      opacity: 1,
      size: 24,
    ),
    accentIconTheme: IconThemeData(
      color: Color(0xffffffff),
      opacity: 1,
      size: 24,
    ),
    sliderTheme: SliderThemeData(
      activeTrackColor: null,
      inactiveTrackColor: null,
      disabledActiveTrackColor: null,
      disabledInactiveTrackColor: null,
      activeTickMarkColor: null,
      inactiveTickMarkColor: null,
      disabledActiveTickMarkColor: null,
      disabledInactiveTickMarkColor: null,
      thumbColor: null,
      disabledThumbColor: null,
      overlayColor: null,
      valueIndicatorColor: null,
      showValueIndicator: null,
      valueIndicatorTextStyle: TextStyle(
        color: Color(0xffffffff),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
    ),
    tabBarTheme: TabBarTheme(
      indicatorSize: TabBarIndicatorSize.tab,
      labelColor: Color(0xffffffff),
      unselectedLabelColor: Color(0xb2ffffff),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: Color(0x1f000000),
      brightness: Brightness.light,
      deleteIconColor: Color(0xde000000),
      disabledColor: Color(0x0c000000),
      labelPadding: EdgeInsets.only(top: 0, bottom: 0, left: 8, right: 8),
      labelStyle: TextStyle(
        color: Color(0xde000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      padding: EdgeInsets.only(top: 4, bottom: 4, left: 4, right: 4),
      secondaryLabelStyle: TextStyle(
        color: Color(0x3d000000),
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      secondarySelectedColor: Color(0x3d2196f3),
      selectedColor: Color(0x3d000000),
      shape: StadiumBorder(
          side: BorderSide(
        color: Color(0xff000000),
        width: 0,
        style: BorderStyle.none,
      )),
    ),
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Color(0xff000000),
          width: 0,
          style: BorderStyle.none,
        ),
        borderRadius: BorderRadius.all(Radius.circular(0.0)),
      ),
    ),
  );

  final ThemeData pembeTheme = ThemeData(
    primarySwatch: MaterialColor(4294719429, {
      50: Color(0xffffe6f8),
      100: Color(0xfffecdf0),
      200: Color(0xfffd9be2),
      300: Color(0xfffd68d3),
      400: Color(0xfffc36c5),
      500: Color(0xfffb04b6),
      600: Color(0xffc90392),
      700: Color(0xff97026d),
      800: Color(0xff640249),
      900: Color(0xff320124)
    }),
    brightness: Brightness.light,
    primaryColor: Color(0xfffb53c6),
    primaryColorBrightness: Brightness.dark,
    primaryColorLight: Color(0xfffecdf0),
    primaryColorDark: Color(0xffb91d73),
    accentColor: Color(0xfffb04b6),
    accentColorBrightness: Brightness.dark,
    canvasColor: Color(0xFFF0F0F0),
    scaffoldBackgroundColor: Color(0xfffafafa),
    bottomAppBarColor: Color(0xffffffff),
    cardColor: Color(0xffffffff),
    dividerColor: Color(0x1f000000),
    highlightColor: Color(0x66bcbcbc),
    splashColor: Color(0x66c8c8c8),
    selectedRowColor: Color(0xfff5f5f5),
    unselectedWidgetColor: Color(0x8a000000),
    disabledColor: Color(0x61000000),
    buttonColor: Color(0xffe0e0e0),
    toggleableActiveColor: Color(0xffc90392),
    secondaryHeaderColor: Color(0xffffe6f8),
    backgroundColor: Color(0xfffd9be2),
    dialogBackgroundColor: Color(0xffffffff),
    indicatorColor: Color(0xfffb04b6),
    hintColor: Color(0x8a000000),
    errorColor: Color(0xffd32f2f),
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.normal,
      minWidth: 88.0,
      height: 36.0,
      padding: EdgeInsets.only(top: 0.0, bottom: 0.0, left: 16.0, right: 16.0),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Color(0xff000000),
          width: 0.0,
          style: BorderStyle.none,
        ),
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
      ),
      alignedDropdown: false,
      buttonColor: Color(0xffe0e0e0),
      disabledColor: Color(0x61000000),
      highlightColor: Color(0x29000000),
      splashColor: Color(0x1f000000),
      colorScheme: ColorScheme(
        primary: Color(0xfffc37c5),
        primaryVariant: Color(0xff97026d),
        secondary: Color(0xfffb04b6),
        secondaryVariant: Color(0xff97026d),
        surface: Color(0xffffffff),
        background: Color(0xfffd9be2),
        error: Color(0xffd32f2f),
        onPrimary: Color(0xffffffff),
        onSecondary: Color(0xffffffff),
        onSurface: Color(0xff000000),
        onBackground: Color(0xffffffff),
        onError: Color(0xffffffff),
        brightness: Brightness.light,
      ),
    ),
    iconTheme: IconThemeData(
      color: Color(0xdd000000),
      opacity: 1.0,
      size: 24.0,
    ),
    primaryIconTheme: IconThemeData(
      color: Color(0xffffffff),
      opacity: 1.0,
      size: 24.0,
    ),
    accentIconTheme: IconThemeData(
      color: Color(0xffffffff),
      opacity: 1.0,
      size: 24.0,
    ),
    sliderTheme: SliderThemeData(
      activeTrackColor: Color(0xfffc37c5),
      inactiveTrackColor: Color(0x3dfc37c5),
      disabledActiveTrackColor: Color(0x5297026d),
      disabledInactiveTrackColor: Color(0x1f97026d),
      activeTickMarkColor: Color(0x8afecdf0),
      inactiveTickMarkColor: Color(0x8afc37c5),
      disabledActiveTickMarkColor: Color(0x1ffecdf0),
      disabledInactiveTickMarkColor: Color(0x1f97026d),
      thumbColor: Color(0xfffc37c5),
      disabledThumbColor: Color(0x5297026d),
      thumbShape: RoundSliderThumbShape(),
      overlayColor: Color(0x29fc37c5),
      valueIndicatorColor: Color(0xfffc37c5),
      valueIndicatorShape: PaddleSliderValueIndicatorShape(),
      showValueIndicator: ShowValueIndicator.onlyForDiscrete,
      valueIndicatorTextStyle: TextStyle(
        color: Color(0xffffffff),
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
    ),
    tabBarTheme: TabBarTheme(
      indicatorSize: TabBarIndicatorSize.tab,
      labelColor: Color(0xffffffff),
      unselectedLabelColor: Color(0xb2ffffff),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: Color(0x1f000000),
      brightness: Brightness.light,
      deleteIconColor: Color(0xde000000),
      disabledColor: Color(0x0c000000),
      labelPadding:
          EdgeInsets.only(top: 0.0, bottom: 0.0, left: 8.0, right: 8.0),
      labelStyle: TextStyle(
        color: Color(0xde000000),
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      padding: EdgeInsets.only(top: 4.0, bottom: 4.0, left: 4.0, right: 4.0),
      secondaryLabelStyle: TextStyle(
        color: Color(0x3d000000),
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      secondarySelectedColor: Color(0x3dfc37c5),
      selectedColor: Color(0x3d000000),
      shape: StadiumBorder(
          side: BorderSide(
        color: Color(0xff000000),
        width: 0.0,
        style: BorderStyle.none,
      )),
    ),
    dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(
      side: BorderSide(
        color: Color(0xff000000),
        width: 0.0,
        style: BorderStyle.none,
      ),
      borderRadius: BorderRadius.all(Radius.circular(0.0)),
    )),
  );

  ThemeData? _themeData;
  ThemeData getTheme() => _themeData ?? maviTheme;

  ThemeNotifier() {
    StorageManager.readData('themeMode').then((value) {
      //print('value read from storage: ' + value.toString());
      var themeMode = value ?? 'mavi';
      if (themeMode == 'dark') {
        //_themeData = ThemeData.dark();
        _themeData = darkTheme;
      } else if (themeMode == 'mavi') {
        _themeData = maviTheme;
      } else if (themeMode == 'pembe') {
        _themeData = pembeTheme;
      } else {
        print('setting dark theme');
        _themeData = darkTheme;
      }
      notifyListeners();
    });
  } 

  void setDarkMode() async {
    _themeData = darkTheme;
    StorageManager.saveData('themeMode', 'dark');
    notifyListeners();
  }

  void setMaviMode() async {
    _themeData = maviTheme;
    StorageManager.saveData('themeMode', 'mavi');
    notifyListeners();
  }

  void setpembeMode() async {
    _themeData = pembeTheme;
    StorageManager.saveData('themeMode', 'pembe');
    notifyListeners();
  }
}
