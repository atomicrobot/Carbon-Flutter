import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'build_mode.freezed.dart';

@freezed
class BuildMode with _$BuildMode {
  factory BuildMode.debug() = DebugBuildMode;
  factory BuildMode.profile() = ProfileBuildMode;
  factory BuildMode.release() = ReleaseBuildMode;

  const BuildMode._();
}
