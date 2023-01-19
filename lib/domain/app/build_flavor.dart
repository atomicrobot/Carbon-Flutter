import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'build_flavor.freezed.dart';

@freezed
class BuildFlavor with _$BuildFlavor {
  factory BuildFlavor.prod() = ProdBuildFlavor;
  factory BuildFlavor.dev() = DevBuildFlavor;

  const BuildFlavor._();

  bool get designSystemPreviewVisible => map(
        dev: (dev) => true,
        prod: (prod) => false,
      );
}
