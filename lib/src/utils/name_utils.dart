class NameUtils {
  static String normalizeClassName(String name) {
    return name
        .split('_')
        .map((part) => part[0].toUpperCase() + part.substring(1))
        .join();
  }

  static String normalizeFileName(String name) {
    return name.toLowerCase();
  }

  static String normalizePropertyName(String name) {
    final parts = name.split('_');
    return parts.first +
        parts
            .skip(1)
            .map((part) => part[0].toUpperCase() + part.substring(1))
            .join();
  }
}
