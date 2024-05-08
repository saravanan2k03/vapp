/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconGen {
  const $AssetsIconGen();

  /// File path: assets/icon/retake.svg
  SvgGenImage get retake => const SvgGenImage('assets/icon/retake.svg');

  /// List of all assets
  List<SvgGenImage> get values => [retake];
}

class $AssetsImageGen {
  const $AssetsImageGen();

  /// File path: assets/image/Ellipse 185.png
  AssetGenImage get ellipse185 =>
      const AssetGenImage('assets/image/Ellipse 185.png');

  /// File path: assets/image/GLOBAL-icon.png
  AssetGenImage get gLOBALIcon =>
      const AssetGenImage('assets/image/GLOBAL-icon.png');

  /// File path: assets/image/Rectangleholder.png
  AssetGenImage get rectangleholder =>
      const AssetGenImage('assets/image/Rectangleholder.png');

  /// File path: assets/image/cuate.png
  AssetGenImage get cuate => const AssetGenImage('assets/image/cuate.png');

  /// File path: assets/image/imageHolder.png
  AssetGenImage get imageHolder =>
      const AssetGenImage('assets/image/imageHolder.png');

  /// File path: assets/image/imagefakemen.png
  AssetGenImage get imagefakemen =>
      const AssetGenImage('assets/image/imagefakemen.png');

  /// File path: assets/image/rafiki.png
  AssetGenImage get rafiki => const AssetGenImage('assets/image/rafiki.png');

  /// File path: assets/image/reset.png
  AssetGenImage get reset => const AssetGenImage('assets/image/reset.png');

  /// File path: assets/image/spoon.png
  AssetGenImage get spoon => const AssetGenImage('assets/image/spoon.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        ellipse185,
        gLOBALIcon,
        rectangleholder,
        cuate,
        imageHolder,
        imagefakemen,
        rafiki,
        reset,
        spoon
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconGen icon = $AssetsIconGen();
  static const $AssetsImageGen image = $AssetsImageGen();
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
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
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
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
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
