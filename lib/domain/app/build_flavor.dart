enum BuildFlavor {
  dev,
  prod;

  bool get designSystemPreviewVisible {
    switch (this) {
      case BuildFlavor.dev:
        return true;
      case BuildFlavor.prod:
        return false;
    }
  }

  static BuildFlavor valueOf(String value) => BuildFlavor.values.firstWhere((flavor) => flavor.name == value);
}
