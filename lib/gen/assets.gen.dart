/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsScreensGen {
  const $AssetsScreensGen();

  /// File path: assets/screens/Facebook - Original.svg
  SvgGenImage get facebookOriginal =>
      const SvgGenImage('assets/screens/Facebook - Original.svg');

  /// File path: assets/screens/Google_Original.svg
  SvgGenImage get googleOriginal =>
      const SvgGenImage('assets/screens/Google_Original.svg');

  /// File path: assets/screens/add_image.svg
  SvgGenImage get addImage => const SvgGenImage('assets/screens/add_image.svg');

  /// File path: assets/screens/brgimg.jpg
  AssetGenImage get brgimg => const AssetGenImage('assets/screens/brgimg.jpg');

  /// File path: assets/screens/castrol.svg
  SvgGenImage get castrol => const SvgGenImage('assets/screens/castrol.svg');

  /// File path: assets/screens/destination.svg
  SvgGenImage get destination =>
      const SvgGenImage('assets/screens/destination.svg');

  /// File path: assets/screens/df_avatar.png
  AssetGenImage get dfAvatar =>
      const AssetGenImage('assets/screens/df_avatar.png');

  /// File path: assets/screens/empty.svg
  SvgGenImage get empty => const SvgGenImage('assets/screens/empty.svg');

  /// File path: assets/screens/flag_VietNam.svg
  SvgGenImage get flagVietNam =>
      const SvgGenImage('assets/screens/flag_VietNam.svg');

  /// File path: assets/screens/free_ship.svg
  SvgGenImage get freeShip => const SvgGenImage('assets/screens/free_ship.svg');

  /// File path: assets/screens/gas_station.svg
  SvgGenImage get gasStation =>
      const SvgGenImage('assets/screens/gas_station.svg');

  /// File path: assets/screens/icon_app.svg
  SvgGenImage get iconApp => const SvgGenImage('assets/screens/icon_app.svg');

  /// File path: assets/screens/icon_cash.svg
  SvgGenImage get iconCash => const SvgGenImage('assets/screens/icon_cash.svg');

  /// File path: assets/screens/icon_momo.svg
  SvgGenImage get iconMomo => const SvgGenImage('assets/screens/icon_momo.svg');

  /// File path: assets/screens/icons-zalo.svg
  SvgGenImage get iconsZalo =>
      const SvgGenImage('assets/screens/icons-zalo.svg');

  /// File path: assets/screens/loading.json
  String get loading => 'assets/screens/loading.json';

  /// File path: assets/screens/loading_primary_color.json
  String get loadingPrimaryColor => 'assets/screens/loading_primary_color.json';

  /// File path: assets/screens/logo_trans.svg
  SvgGenImage get logoTrans =>
      const SvgGenImage('assets/screens/logo_trans.svg');

  /// File path: assets/screens/mechanic.png
  AssetGenImage get mechanic =>
      const AssetGenImage('assets/screens/mechanic.png');

  /// File path: assets/screens/mission.svg
  SvgGenImage get mission => const SvgGenImage('assets/screens/mission.svg');

  /// File path: assets/screens/mobile_pay.svg
  SvgGenImage get mobilePay =>
      const SvgGenImage('assets/screens/mobile_pay.svg');

  /// File path: assets/screens/momo.png
  AssetGenImage get momo => const AssetGenImage('assets/screens/momo.png');

  /// File path: assets/screens/order_confirm.svg
  SvgGenImage get orderConfirm =>
      const SvgGenImage('assets/screens/order_confirm.svg');

  /// File path: assets/screens/sad_mood.svg
  SvgGenImage get sadMood => const SvgGenImage('assets/screens/sad_mood.svg');

  /// File path: assets/screens/setting.svg
  SvgGenImage get setting => const SvgGenImage('assets/screens/setting.svg');

  /// File path: assets/screens/sos.svg
  SvgGenImage get sos => const SvgGenImage('assets/screens/sos.svg');

  /// File path: assets/screens/terms-privacy.svg
  SvgGenImage get termsPrivacy =>
      const SvgGenImage('assets/screens/terms-privacy.svg');

  /// File path: assets/screens/vehicle_maintenance.svg
  SvgGenImage get vehicleMaintenance =>
      const SvgGenImage('assets/screens/vehicle_maintenance.svg');

  /// File path: assets/screens/vietnam_flag.png
  AssetGenImage get vietnamFlag =>
      const AssetGenImage('assets/screens/vietnam_flag.png');

  /// File path: assets/screens/vision.svg
  SvgGenImage get vision => const SvgGenImage('assets/screens/vision.svg');

  /// File path: assets/screens/welcome.svg
  SvgGenImage get welcome => const SvgGenImage('assets/screens/welcome.svg');
}

class Assets {
  Assets._();

  static const $AssetsScreensGen screens = $AssetsScreensGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;
}
