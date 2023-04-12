// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';
SharedPreferences? _prefs;

abstract class FlutterFlowTheme {
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) => mode == ThemeMode.system
      ? _prefs?.remove(kThemeModeKey)
      : _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);

  static FlutterFlowTheme of(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? DarkModeTheme()
        : LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color primaryBtnText;
  late Color lineColor;
  late Color textbox;
  late Color txtBoxBdr;
  late Color yellowTag;
  late Color yellowTagBdr;
  late Color tenantBox;
  late Color tenantBoxBdr;
  late Color appBar;
  late Color bottomMenuBar;
  late Color whiteText;
  late Color loginTxtBox;
  late Color test;
  late Color backgroundComponents;
  late Color bottomMenuActive;
  late Color bottomMenu;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF6A60D4);
  late Color secondary = const Color(0xFFFFFFFF);
  late Color tertiary = const Color(0xFF7367F0);
  late Color alternate = const Color(0xFFFFFFFF);
  late Color primaryText = const Color(0xFF000000);
  late Color secondaryText = const Color(0xFF838890);
  late Color primaryBackground = const Color(0xFFFFFFFF);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color accent1 = const Color(0xFF616161);
  late Color accent2 = const Color(0xFF757575);
  late Color accent3 = const Color(0xFFE0E0E0);
  late Color accent4 = const Color(0xFFEEEEEE);
  late Color success = const Color(0xFF04A24C);
  late Color warning = const Color(0xFFFCDC0C);
  late Color error = const Color(0xFFE21C3D);
  late Color info = const Color(0xFF1C4494);

  late Color primaryBtnText = Color(0xFFFFFFFF);
  late Color lineColor = Color(0xFFE0E3E7);
  late Color textbox = Color(0xFF055DB7);
  late Color txtBoxBdr = Color(0xFFD1CEEC);
  late Color yellowTag = Color(0xFFFFFAE3);
  late Color yellowTagBdr = Color(0xFFF4EDCA);
  late Color tenantBox = Color(0xFF6A60D4);
  late Color tenantBoxBdr = Color(0xFF8379EE);
  late Color appBar = Color(0xFFE8F1FF);
  late Color bottomMenuBar = Color(0xFF6A60D4);
  late Color whiteText = Color(0xFFFFFFFF);
  late Color loginTxtBox = Color(0xFFFFFFFF);
  late Color test = Color(0xFFB9B6E2);
  late Color backgroundComponents = Color(0xFF1D2428);
  late Color bottomMenuActive = Color(0xFFFFFFFF);
  late Color bottomMenu = Color(0xFFC2C5F2);
}

abstract class Typography {
  String get displayLargeFamily;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  TextStyle get bodySmall;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => '';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Roboto',
      );
  String get displayMediumFamily => '';
  TextStyle get displayMedium => GoogleFonts.getFont(
        'Roboto',
      );
  String get displaySmallFamily => 'DM Sans';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'DM Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
      );
  String get headlineLargeFamily => '';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Roboto',
      );
  String get headlineMediumFamily => 'DM Sans';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'DM Sans',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
      );
  String get headlineSmallFamily => 'DM Sans';
  TextStyle get headlineSmall => GoogleFonts.getFont(
        'DM Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 24.0,
      );
  String get titleLargeFamily => '';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Roboto',
      );
  String get titleMediumFamily => 'DM Sans';
  TextStyle get titleMedium => GoogleFonts.getFont(
        'DM Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleSmallFamily => 'DM Sans';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'DM Sans',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get labelLargeFamily => '';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Roboto',
      );
  String get labelMediumFamily => '';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Roboto',
      );
  String get labelSmallFamily => '';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Roboto',
      );
  String get bodyLargeFamily => '';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Roboto',
      );
  String get bodyMediumFamily => 'DM Sans';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'DM Sans',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodySmallFamily => 'DM Sans';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'DM Sans',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
}

class DarkModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF413C73);
  late Color secondary = const Color(0xFF413C73);
  late Color tertiary = const Color(0xFF1C1A31);
  late Color alternate = const Color(0xFF3F3C5E);
  late Color primaryText = const Color(0xFFFFFFFF);
  late Color secondaryText = const Color(0xFFA9A6C5);
  late Color primaryBackground = const Color(0xFF1C1A31);
  late Color secondaryBackground = const Color(0xFF101213);
  late Color accent1 = const Color(0xFFEEEEEE);
  late Color accent2 = const Color(0xFFE0E0E0);
  late Color accent3 = const Color(0xFF757575);
  late Color accent4 = const Color(0xFF616161);
  late Color success = const Color(0xFF04A24C);
  late Color warning = const Color(0xFFFCDC0C);
  late Color error = const Color(0xFFE21C3D);
  late Color info = const Color(0xFF1C4494);

  late Color primaryBtnText = Color(0xFFFFFFFF);
  late Color lineColor = Color(0xFF22282F);
  late Color textbox = Color(0xFF3F3C5D);
  late Color txtBoxBdr = Color(0xFF524F77);
  late Color yellowTag = Color(0xFF2D2A4E);
  late Color yellowTagBdr = Color(0xFF2D2A4E);
  late Color tenantBox = Color(0xFF3F3C5E);
  late Color tenantBoxBdr = Color(0xFF55517C);
  late Color appBar = Color(0xFF2D2A4E);
  late Color bottomMenuBar = Color(0xFF413C73);
  late Color whiteText = Color(0xFFFFFFFF);
  late Color loginTxtBox = Color(0xFF3F3C5E);
  late Color test = Color(0x00000000);
  late Color backgroundComponents = Color(0xFF1D2428);
  late Color bottomMenuActive = Color(0xFFFFFFFF);
  late Color bottomMenu = Color(0xFFC2C5F2);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
